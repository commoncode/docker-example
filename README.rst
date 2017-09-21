Docker Example
==============

An example Django project to illustrate using Docker

Instructions
------------

To build:

.. code-block:: sh

	docker build -t commoncode/docker-example .

or:

.. code-block:: sh

	make build


The above commands will cause the Docker command line tool to read in and execute the ``Dockerfile`` which is a set of instruction on what should be included in your Docker image and actions to perform within the image to get it fully configured


To run once built:

.. code-block:: sh

	docker run --rm -it -p 8000:80 commoncode/docker-example

or:

.. code-block:: sh

	make run

Where:


--rm
    Remove this container after it closes

-i
    Interactive. Keep STDIN open even if not attached

-t
    Allocate a pseudo-TTY


So in this case we are creating a container from the ``commoncode/docker-example`` image. We want it to be destroyed as soon as it is shut down (``--rm``), we are assigning the local port ``8000`` to internal port ``80`` (``-p 8000:80``). We telling docker that we want to interact with the process running inside the container using stdin via a TTY (``-it``).
