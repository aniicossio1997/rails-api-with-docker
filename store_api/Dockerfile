FROM ruby:3.0.0
# add user developer
RUN useradd developer
# create folder developer
RUN mkdir -p /home/developer
# set folder
WORKDIR /home
# set permission to folder, propietario
RUN chown -R developer:developer developer
RUN chmod 755 developer
# set developer
USER developer
# Create folder app
RUN mkdir -p /home/developer/app
# use folder app
WORKDIR /home/developer/app
# Copy files
COPY ./Gemfile .
COPY ./Gemfile.lock .
# install gems
RUN bundle install
# Copy the main app
COPY ./ .
# Expose port
EXPOSE 3000
# run server
ENTRYPOINT [ "./entrypoints/docker-entrypoint.sh"]