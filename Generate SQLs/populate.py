import sqlite3
import json
from sqlite3 import Error


def create_connection(db_file):
    """ create a database connection to the SQLite database
        specified by the db_file
    :param db_file: database file
    :return: Connection object or None
    """
    conn = None
    try:
        conn = sqlite3.connect(db_file)
    except Error as e:
        print(e)

    return conn


def select_all_countries(conn):
    """
    Query all rows in the tasks table
    :param conn: the Connection object
    :return:
    """
    cur = conn.cursor()
    cur.execute("SELECT * FROM Country")

    rows = cur.fetchall()

    for row in rows:
        print(row)


def quote(word):
    return "\"" + word + "\""


def create_stadium_views_by_country(conn):
    cur = conn.cursor()
    cur.execute(
        "SELECT matchCountry.id, matchCountry.country_id, Country.name FROM matchCountry left join Country on matchCountry.country_id = Country.id")

    rows = cur.fetchall()

    for row in rows:
        match_id = row[0]
        country = row[2]
        query = "UPDATE matchCountry SET stadium_id = (SELECT s.stadium_id from Stadium s where country = {country} order by random() limit 1) where matchCountry.id = {match_id};".format(
            country=quote(country), match_id=match_id)
        cur.execute(query)


def main():
    database = "soccerData.sqlite"

    # create a database connection
    conn = create_connection(database)
    # f = open('response.json')
    # data = json.load(f)['data']

    with conn:
        cur = conn.cursor()
        cur.execute("delete from MatchPlayers")
        cur.execute(
            "select id, home_player_1, home_player_2, home_player_3, home_player_4, home_player_5, home_player_6, "
            "home_player_7, home_player_8, home_player_9, home_player_10, home_player_11, away_player_1, "
            "away_player_2, away_player_3, away_player_4, away_player_5, away_player_6, away_player_7, away_player_8, "
            "away_player_9, away_player_10, away_player_11 from Match")

        rows = cur.fetchall()

        # sides = ['home', 'away']
        total_rows = len(rows)
        rows_processed = 0
        for row in rows:
            # city = row[0]
            # population = 0

            # for i in data:
            #     if i['city'] == city or i['city'] == city.upper():
            #         population = int(float(i['populationCounts'][0]['value']))

            #         query = "UPDATE City SET population = " + quote(str(population)) +  " where name = " + quote(city)
            #         cur.execute(query)

            #         break
            #     else:
            #         query = "UPDATE City SET population = " + quote("0") +  " where name = " + quote(city)
            #         cur.execute(query)

            match_id = row[0]
            home_player_ids = set(row[1:12])
            away_player_ids = set(row[12:])
            players_added = []
            for home_player_id in home_player_ids:
                if home_player_id is None or home_player_id in players_added:
                    continue

                query = "insert into MatchPlayers(match_id, player_id, side) values({match_id},{player_id},{side})".format(
                    match_id=match_id, player_id=home_player_id, side=quote("home"))
                cur.execute(query)
                conn.commit()
                players_added.append(home_player_id)

            for away_player_id in away_player_ids:
                if away_player_id is None or away_player_id in players_added:
                    continue
                query = "insert into MatchPlayers(match_id, player_id, side) values({match_id},{player_id},{side})".format(
                    match_id=match_id, player_id=away_player_id, side=quote("away"))
                cur.execute(query)
                players_added.append(away_player_id)
                conn.commit()
            rows_processed += 1
            print(str(rows_processed) + "rows processed out of " + str(total_rows))


main()
