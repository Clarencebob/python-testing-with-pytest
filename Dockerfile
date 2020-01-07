FROM amazonlinux:latest 

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
# RUN yum -y install which 
RUN yum -y install python3 
CMD ["ln", "-s", "/lib/python2.7/site-packages/amazon_linux_extras", "/opt/venv/lib64/python3.7/site-packages/"]


# 1. this is how I use Pipenv to create a virtual env.
RUN pip3 install pipenv
ADD src/ app/src/
CMD ["cd", "app"]
# -- Adding Pipfiles
ONBUILD COPY Pipfile Pipfile
ONBUILD COPY Pipfile.lock Pipfile.lock

# -- Install dependencies:
ONBUILD RUN set -ex && pipenv install --deploy --system

# 2. this is how I use virtualenv to create a virtual env
#  RUN pip3 install virtualenv 
#  ENV VIRTUAL_ENV=/opt/venv
#  RUN python3 -m virtualenv --python=/usr/bin/python3 $VIRTUAL_ENV
#  ENV PATH="$VIRTUAL_ENV/bin:$PATH"
# # Install dependencies:
# COPY requirements.txt .
# RUN pip install -r requirements.txt
# # Run the application:
# ADD src/ src/
# # CMD ["cd", "-R", "src/ch4"]
# # CMD ["pytest", "-q", "-s", "test_tmpdir.py::test_tmpdir_factory"]
