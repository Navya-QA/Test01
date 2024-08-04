set-hostnmame FrontEnd
dnf install nginx 
systemctl enable nginx 
systemctl restart nginx
rm -rf /usr/share/nginx/html/*   
curl -o /tmp/frontend.zip https://expense-web-app.s3.amazonaws.com/frontend.zip
cd /usr/share/nginx/html
unzip /tmp/frontend.zip
systemctl status nginx

echo " installed successfully !! "

cd ..
cd ..

cp pro.conf /etc/nginx/default.d/expense.conf 
systemctl restart nginx
systemctl status nginx

