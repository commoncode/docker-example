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

	docker run --rm -it -p 80:80 commoncode/docker-example

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


So in this case we are creating a container from the ``commoncode/docker-example`` image. We want it to be destroyed as soon as it is shut down (``--rm``), we are assigning the local (host) port ``80`` to internal port ``80`` (``-p 80:80``). We are also telling docker that we want to interact with the process running inside the container using stdin via a TTY (``-it``).


See it by visiting: `http://127.0.0.1 <http://127.0.0.1>`_
