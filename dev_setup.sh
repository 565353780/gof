conda install cmake conda-forge::gmp conda-forge::cgal -y

pip3 install torch torchvision torchaudio \
  --index-url https://download.pytorch.org/whl/cu124

pip install plyfile tqdm open3d ninja GPUtil \
  opencv-python lpips trimesh einops

cd ./submodules/diff-gaussian-rasterization
python setup.py install

cd ../simple-knn
python setup.py install

cd ../submodules/tetra-triangulation
cmake -DCMAKE_POLICY_VERSION_MINIMUM=3.5 .
make -j
python setup.py install
