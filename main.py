import pandas as pd

# Data for books - starting with the initial data and adding more records
data = {
    'ISBN': [
        '9788025701340', '9788025702569', '9788020712342', '9788073310565', '9788020023911',
        '9788026013433', '9788072206791', '9788072037159', '9788025702599', '9788025702339',
        '9788073351449', '9788073351599', '9788073351605', '9788073351759', '9788073351445',
        '9788072037345', '9788072037395', '9788072037401', '9788072037541', '9788072037641',
        '9788072037951', '9788072037968', '9788072037975', '9788072037982', '9788072037999',
        '9788073310572', '9788073310596', '9788073310589', '9788073310568', '9788073310525',
        '9788073310549', '9788073310532', '9788073310518', '9788073310501', '9788073310495',
        '9788073310488', '9788073310471', '9788073310464', '9788073310457', '9788073310440',
        '9788073310433', '9788073310426', '9788073310419', '9788073310402', '9788073310396',
        '9788073310389', '9788073310372', '9788073310365', '9788073310358'
    ],
    'Název knihy': [
        'Muž, který sázel stromy', 'Společenstvo prstenu', 'Stoletý stařík, který vylezl z okna a zmizel', 'Zpověď',
        'Osudy dobrého vojáka Švejka', 'Český sen', 'Na západní frontě klid', 'Alchymista', 'Dvě věže', 'Návrat krále',
        'Hobit', 'Nejtemnější hodina', 'Pád titánů', 'Zimní palác', 'Konec staletí', 'Metro 2033', 'Metro 2034',
        'Metro 2035', 'Hunger Games', 'Hunger Games 2', 'Hunger Games 3', 'Život po životě', 'Voda pro slony',
        'Skleněný pokoj', 'Sběratel kostí', 'Léto v tichém městě', 'Večery pod lampou', 'Nesmrtelný', 'Černobílý svět',
        'Vyvolávač stínů', 'Dívka v pavoučí síti', 'Sedm let v Tibetu', 'Pád andělů', 'Atlas mraků',
        'Kniha ztracených věcí',
        'Ještě než umřu', 'Poslední království', 'Královna stínů', 'Město z kostí', 'Srdce tmy', 'Dvě města',
        'Zlodějka knih',
        'Příběh lásky a tmy', 'Bílý tesák', 'Anna Karenina', 'Vojna a mír', 'Doktor Živago', 'Evžen Oněgin',
        'Mistr a Markétka'
    ],
    'Autor': [
        'Jean Giono', 'J.R.R. Tolkien', 'Jonas Jonasson', 'Hjalmar Söderberg', 'Jaroslav Hašek', 'Martin Mejstřík',
        'Erich Maria Remarque', 'Paulo Coelho', 'J.R.R. Tolkien', 'J.R.R. Tolkien', 'J.R.R. Tolkien',
        'Anthony McCarten',
        'Ken Follett', 'Steve Berry', 'Eduard Bass', 'Dmitry Glukhovsky', 'Dmitry Glukhovsky', 'Dmitry Glukhovsky',
        'Suzanne Collins', 'Suzanne Collins', 'Suzanne Collins', 'Raymond Moody', 'Sara Gruen', 'Simon Mawer',
        'Jeffery Deaver', 'Eduard Bass', 'Alexandre Dumas', 'José Saramago', 'Kathryn Stockett', 'Rick Riordan',
        'David Lagercrantz', 'Heinrich Harrer', 'Tess Gerritsen', 'David Mitchell', 'John Connolly', 'Jenny Downham',
        'Bernard Cornwell', 'Sarah J. Maas', 'Cassandra Clare', 'Joseph Conrad', 'Charles Dickens', 'Markus Zusak',
        'Amos Oz', 'Jack London', 'Lev Tolstoj', 'Lev Tolstoj', 'Boris Pasternak', 'Alexander Puškin',
        'Michail Bulgakov'
    ],
    'Rok vydání': [
        2009, 2012, 2015, 2010, 2013, 2014, 2006, 2005, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2010, 2011, 2012,
        2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2010, 2011, 2012, 2013, 2014, 2015, 2016,
        2017, 2018, 2019, 2020, 2021, 2022, 2023, 2020, 2019, 2018, 2017, 2016, 2015
    ],
    'Nakladatelství': [
        'Knihovna', 'Argo', 'Panteon', 'BB Art', 'Odeon', 'Host', 'Naše vojsko', 'Argo', 'Argo', 'Argo', 'Argo',
        'Omega', 'Host', 'Panteon', 'Host', 'Knižní klub', 'Knižní klub', 'Knižní klub', 'Albatros', 'Albatros',
        'Albatros', 'Omega', 'BB Art', 'Host', 'Argo', 'Panteon', 'Albatros', 'Host', 'Panteon', 'Omega', 'Knižní klub',
        'BB Art', 'Host', 'Panteon', 'Omega', 'Host', 'BB Art', 'Albatros', 'Panteon', 'Omega', 'Host', 'Panteon',
        'Albatros', 'Host', 'Argo', 'Argo', 'Omega', 'Panteon', 'Albatros'
    ],
    'Žánr': [
        'Beletrie', 'Fantasy', 'Humoristický román', 'Psychologický román', 'Satira', 'Reportáž', 'Válečná literatura',
        'Beletrie', 'Fantasy', 'Fantasy', 'Fantasy', 'Historický román', 'Historický román', 'Dobrodružství',
        'Historie',
        'Sci-fi', 'Sci-fi', 'Sci-fi', 'Young Adult', 'Young Adult', 'Young Adult', 'Filozofie', 'Román',
        'Historický román',
        'Detektivka', 'Beletrie', 'Klasika', 'Fikce', 'Historický román', 'Fantasy', 'Detektivka', 'Dobrodružství',
        'Thriller',
        'Sci-fi', 'Fantasy', 'Román', 'Dobrodružství', 'Fantasy', 'Fantasy', 'Psychologický román', 'Klasika',
        'Historie',
        'Biografie', 'Dobrodružství', 'Román', 'Klasika', 'Historický román', 'Klasika', 'Fikce'
    ],
    'Počet stran': [
        60, 423, 356, 215, 768, 198, 296, 172, 441, 564, 345, 287, 400, 375, 290, 405, 431, 458, 498, 502, 503, 512,
        600, 215, 530, 300, 280, 450, 475, 320, 370, 540, 310, 465, 356, 356, 420, 390, 305, 412, 500, 298, 456, 499,
        740, 699, 1230, 342, 678
    ],
    'Cena (Kč)': [
        150, 450, 320, 280, 520, 270, 310, 230, 450, 460, 380, 350, 400, 360, 420, 390, 410, 430, 490, 500, 510, 530,
        600, 280, 150, 450, 320, 280, 520, 270, 310, 230, 450, 460, 380, 350, 400, 360, 420, 390, 410, 430, 490, 500,
        510, 530, 600, 280, 530
    ]
}

# Creating the DataFrame
df_books = pd.DataFrame(data)

# Saving the DataFrame to a CSV file
file_path = 'czech_books_collection.csv'
df_books.to_csv(file_path, index=False)

