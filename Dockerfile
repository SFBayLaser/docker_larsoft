FROM sfbaylaser/slf7-essentials:latest
LABEL Maintainer: Tracy Usher

# Start by getting the underlying code required by icarusalg
# Essentially, this is included with LArSoftObj
RUN mkdir larsoft && \
  cd larsoft && \
  wget http://scisoft.fnal.gov/scisoft/bundles/tools/pullProducts && \
  chmod +x pullProducts && \
  mkdir products && \
  ./pullProducts products/ slf7 larsoft-v09_16_01 s106-e19 prof

# Install PyQt5 and PyQtGraph
RUN cd / && \
  source larsoft/products/setup && \
  setup larsof v09_16_01 -q e19:prof && \
  pip install --upgrade pip && \
  pip install pyqt5==5.11.3 && \
  pip install pyqtgraph

