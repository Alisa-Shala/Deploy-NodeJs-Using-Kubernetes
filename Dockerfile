# Përdor një imazh bazë Node.js
FROM node:14

# Vendos punën në direktorinë /app
WORKDIR /app

# Kopjo package.json dhe package-lock.json (nëse ekziston) në container
COPY package*.json ./

# Instalo varësitë
RUN npm install

# Kopjo të gjitha skedarët e aplikacionit në container
COPY . .

# Ekspozoni portin që aplikacioni dëgjon (3000)
EXPOSE 3000

# Komanda që ekzekuton aplikacionin
CMD ["npm", "start"]
