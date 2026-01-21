cd ..
git clone https://github.com/565353780/tetra-triangulation.git
git clone --depth 1 https://github.com/camenduru/simple-knn.git

conda install cmake conda-forge::gmp conda-forge::cgal -y

pip3 install torch torchvision torchaudio \
  --index-url https://download.pytorch.org/whl/cu124

pip install plyfile tqdm open3d ninja GPUtil \
  opencv-python lpips trimesh einops

cd tetra-triangulation
./setup.sh

cd ../simple-knn
python setup.py install

cd ../gof/submodules/diff-gaussian-rasterization
python setup.py install
