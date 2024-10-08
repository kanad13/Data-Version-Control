pip3 install --no-cache-dir -r ./requirements.txt
echo "§§§§§§§§§§§§§done executing postStart script§§§§§§§§§§§§§"

# git init
# git submodule add https://github.com/hakimel/reveal.js.git reveal.js
#python3 -m venv dvc_venv
# source dvc_venv/bin/activate
#pip3 install -r requirements.txt
# echo "dvc_venv/" >> .gitignore
#pip3 list
#pip3 freeze > requirements.txt
#sudo pip3 uninstall -r requirements.txt -y
#gradio misc/present/gradio/test-gradio.py

# https://nbconvert.readthedocs.io/en/latest/usage.html#reveal-js-html-slideshow
# https://nbconvert.readthedocs.io/en/latest/config_options.html
# https://medium.com/learning-machine-learning/present-your-data-science-projects-with-jupyter-slides-75f20735eb0f

# jupyter nbconvert --to slides data_version_control.ipynb --reveal-prefix=reveal.js --SlidesExporter.reveal_theme=white  --SlidesExporter.reveal_scroll=True --SlidesExporter.reveal_transition=slide --SlidesExporter.reveal_number='c/t' --embed-images

# && mv index.slides.html present.html

# jupyter nbconvert --to slides index.ipynb --reveal-prefix=reveal.js --SlidesExporter.reveal_theme=white  --SlidesExporter.reveal_scroll=True --SlidesExporter.reveal_transition=none --SlidesExporter.reveal_number='c/t' --SlidesExporter.exclude_output=True --embed-images && mv index.slides.html index.html

# --post serve
