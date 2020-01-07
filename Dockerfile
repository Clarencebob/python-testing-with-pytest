FROM amazonlinux:latest 
RUN yum -y install which 
RUN yum -y install python3 

RUN pip3 install virtualenv 
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m virtualenv --python=/usr/bin/python3 $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
COPY requirements.txt .
RUN pip install -r requirements.txt

# Run the application:
ADD src/ src/
# CMD ["cd", "-R", "src/ch4"]
# CMD ["pytest", "-q", "-s", "test_tmpdir.py::test_tmpdir_factory"]
