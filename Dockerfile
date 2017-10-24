FROM ubuntu:latest

MAINTAINER SeveirRoy

RUN apt-get update && \
    apt-get install sysbench -y --no-install-recommends
    
CMD /usr/bin/sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw prepare && \
    /usr/bin/sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw run && \
    /usr/bin/sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw cleanup
