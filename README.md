# Python testing with pytest

This is the code repository of a book 
* titled "Python testing with pytest" 
* written by Brian Okken
* Its source is [here](https://pragprog.com/book/bopytest/python-testing-with-pytest)


# How to use this repository

* On your local host machine, run the following docker command to create a docker container
* This will download an amazon linux latest machine from the Docker Hub and create a docker container specified by the Dockerfile

`docker build --no-cache -t amazonlinux-pytest-env .`

* If you want to use the cache to build the container, remove the `--no-cache` option

* Once the container is built, use the following command to start a bash session

`docker run -i -t --rm amazonlinux-pytest-env /bin/bash`

  * `--rm` option automatically removes the container when it exits (incompatible with -d)
  * `-it` or `-i` and `-t` used simultaneously allows the process to be used interactively.
  * -i and -t are explained in the following:
    * -t: Allocate a pseudo-tty
    * -i: Keep STDIN open even if not attached

* When you enter the bash session, run the following command, for example to run the pytest.

```bash
cd src/ch4
pytest test_tmpdir.py -v
```
* If we see a run of the pytest session successfully, then you can confirm that you run the pytest successfully

```bash
bash-4.2# pytest test_tmpdir.py -v
============================================================= test session starts =============================================================
platform linux -- Python 3.7.4, pytest-5.3.2, py-1.8.1, pluggy-0.13.1 -- /opt/venv/bin/python3
cachedir: .pytest_cache
rootdir: /src/ch4
collected 2 items

test_tmpdir.py::test_tmpdir PASSED                                                                                                      [ 50%]
test_tmpdir.py::test_tmpdir_factory PASSED                                                                                              [100%]

============================================================== 2 passed in 0.02s ==============================================================
```
