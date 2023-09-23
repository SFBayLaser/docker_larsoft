FROM sfbaylaser/slf7-essentials:latest
LABEL Maintainer: Tracy Usher

# Basically, pull v09_78_02 for LArSoft
RUN mkdir larsoft && \
  cd larsoft && \
  wget http://scisoft.fnal.gov/scisoft/bundles/tools/pullProducts && \
  chmod +x pullProducts && \
  mkdir products && \
  ./pullProducts products/ slf7 larsoft-v09_78_02 s120a-e20 prof

