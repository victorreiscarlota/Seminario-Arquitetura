# Projeto: NGINX Containerizado com Docker e Kubernetes
![imagem_projeto](docs/images/image.png)

Este projeto demonstra a execução de uma aplicação HTML estática servida por um container NGINX, com orquestração via Docker Compose e Kubernetes.

---

## 🧼 Limpeza do ambiente (recomendado antes de executar)

```bash
docker-compose down -v
kubectl delete -f nginx-deployment.yaml
kubectl delete -f nginx-service.yaml
```

---

## 🐳 Rodando com Docker Compose

### 🔨 Build da imagem e execução do container:

```bash
docker-compose up --build
```

### 🌐 Acesse no navegador:

```
http://localhost:8080
```

---

## ☸️ Rodando com Kubernetes

### 🔁 Aplicar os recursos no cluster:

```bash
kubectl apply -f nginx-deployment.yaml
kubectl apply -f nginx-service.yaml
```

### 🌐 Acesse no navegador:

* Com Docker Desktop: `http://localhost:30080`
* Com Minikube:

```bash
minikube service nginx-service
```

---

## 📁 Estrutura de arquivos do projeto

```
nginx-projeto/
├── html/
│   └── index.html
├── Dockerfile
├── default.conf
├── docker-compose.yml
├── nginx-deployment.yaml
└── nginx-service.yaml
```

---

## 📝 Tecnologias utilizadas

* Docker
* Docker Compose
* Kubernetes (kubectl, Minikube ou Docker Desktop)
* NGINX (servidor web)
* HTML + CSS + JS para visualização

---

## 📷 Visual esperado

O navegador deve exibir um texto estilizado com animação seguindo o cursor:

> "Hello World 🚀!"

---

## 📌 Observação

Este projeto **não utiliza nenhuma linguagem de programação**, sendo ideal para demonstração de containers e orquestração pura.

---

## 📚 Referências

* [Docker Docs](https://docs.docker.com)
* [Docker Compose Docs](https://docs.docker.com/compose/)
* [Kubernetes Docs](https://kubernetes.io/docs/)
* [NGINX Docker](https://hub.docker.com/_/nginx)
* [Kompose](https://kompose.io/)
