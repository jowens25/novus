wget -qO- https://jowens25.github.io/novus/public-key.asc | sudo gpg --dearmor -o /etc/apt/keyrings/novus.gpg
echo "deb [signed-by=/etc/apt/keyrings/novus.gpg] https://jowens25.github.io/novus stable main" | sudo tee /etc/apt/sources.list.d/novus.list
sudo apt update
sudo apt install ns-agent ns-serial-mux ns2
