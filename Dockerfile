FROM gentoo/stage3:arm64-systemd

RUN emerge-webrsync
# RUN emerge --sync
# RUN emerge --update --deep --newuse @world
# RUN emerge systemd

# RUN sudo locale-gen en_US.UTF-8
RUN groupadd -g 1000 user
RUN useradd -m -u 1000 -g 1000 user
# RUN echo "user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/usersudo
# RUN chmod 400 /etc/sudoers.d/usersudo
# USER user

CMD ["/bin/bash"]
