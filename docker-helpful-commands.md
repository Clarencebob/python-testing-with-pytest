# when tag becomes <none> and want to remove them:

`docker rmi $(docker images -f 'dangling=true' -q) -f`

# when we want to build a docker container based on Dockerfile

`docker build -t amazonlinux-pytest-env .`

where an example of the Dockerfile is the following:

```bash
FROM amazonlinux:latest 
RUN yum -y install python3 

RUN pip3 install virtualenv 
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m virtualenv --python=/usr/bin/python3 $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
COPY requirements.txt .
RUN pip install -r requirements.txt

# Run the application:
COPY src .
CMD ["cd", "src/ch4"]
CMD ["pytest", "-q", "-s", "test_tmpdir.py::test_tmpdir_factory"]
```

# when we want to delete all stopped containers

```bash
$ docker container prune
WARNING! This will remove all stopped containers.
```

# reference 

https://suin.io/537
