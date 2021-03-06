mkdir build
cd build

cmake -GNinja ^
      -DCMAKE_TOOLCHAIN_FILE=%CONDA_PREFIX%\h2o.cmake ^
      -DCMAKE_INSTALL_PREFIX=./install ^
      -DTARGET_ARCHITECTURE="nehalem" ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DALICEVISION_BUILD_DOC=OFF ^
      -DALICEVISION_USE_POPSIFT=ON ^
      -DALICEVISION_USE_CUDA=ON ^
      -DALICEVISION_USE_OPENCV=ON ^
      -DALICEVISION_USE_ALEMBIC=ON ^
      -DALICEVISION_USE_OCVSIFT=ON ^
      -DALICEVISION_REQUIRE_CERES_WITH_SUITESPARSE=OFF ^
      -DBOOST_ALL_DYN_LINK=1 ^
      -DBoost_USE_STATIC_LIBS=OFF ^
      -DFLANN_INCLUDE_DIR_HINTS=%CONDA_PREFIX%\include ^
      -DLEMON_INCLUDE_DIR_HINTS=%CONDA_PREFIX%\include ^
      -DCUDA_TOOLKIT_ROOT_DIR="C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v10.2" ^
      ../

cd..