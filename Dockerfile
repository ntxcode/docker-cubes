FROM python:3

ENV cubes_folder /srv/cubes

RUN pip install Flask SQLAlchemy psycopg2 cubes[all]

WORKDIR $cubes_folder

VOLUME [$cubes_folder]

EXPOSE 5000

CMD ["slicer", "serve", "slicer.ini"]
