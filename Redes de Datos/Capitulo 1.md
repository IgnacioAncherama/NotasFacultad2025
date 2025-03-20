## Que es Internet?:
Hay dos formas de responder a esta pregunta. 
- La primera de ellas es describiendo las tuercas y tornillos que forman la red, es decir, los componentes hardware y software básicos que forman Internet. 
- La segunda es describiéndola en términos de la infraestructura de red que proporciona servicios a aplicaciones distribuidas.

---
## 1.1.1  Descripción de los componentes esenciales
Internet es una red de computadoras interconecta millones de dispositivos informaticos en todo el mundo.

Antes estos dispositivos eran fundamentalmente computadoras PC de escritorio tradicionales, estaciones de trabajo Linux y los llamados servidores, que almacenan y transmiten información tal como páginas web y mensajes de correo electrónico. Ahora cada vez se conectan menos dispositivos no tradicionales, como computadoras portatiles. Es decir que este termino "RED DE COMPUTADORAS" esta sonando obsoleto, a causa de los dispositivos no tradicionales.

==En la jerga de Internet, todos estos dispositivos se denominan hosts o sistemas terminales.==

Los sistemas terminales se conectan entre sí mediante una **red de enlaces de comunicaciones y conmutadores de paquetes**. Existen muchos tipos de enlaces de comunicaciones, los cuales están compuestos por diferentes tipos de medios físicos, entre los que se incluyen el cable coaxial, el hilo de cobre, la fibra óptica y el espectro de radio. **Los distintos enlaces pueden transmitir los datos a distintas velocidades y la velocidad de transmisión de un enlace se mide en bits/segundo.** *Cuando un sistema terminal tiene datos que enviar a otro sistema terminal, el emisor segmenta los datos y añade bytes de cabecera a cada segmento.* Los paquetes de información resultantes, conocidos como paquetes en la jerga informática, se envían entonces a través de la red hasta el sistema terminal receptor, donde vuelven a ser ensamblados para obtener los datos originales.

**Un conmutador de paquetes toma un paquete que llega a través de uno de sus enlaces de comunicaciones de entrada y lo reenvía a través de a uno de sus enlaces de comunicaciones de salida.** Los dos conmutadores mas populares son los routers y los switches de la capa de enlace.

![[Pasted image 20250316193152.png]]

Los switches de la capa de enlace normalmente se emplean en las redes de acceso, mientras que los routers suelen utilizarse en el núcleo de la red. La secuencia de enlaces de comunicaciones y conmutadores de paquetes que atraviesa un paquete desde el sistema terminal emisor hasta el sistema terminal receptor, se conoce con el nombre de **ruta** a través de la red.

**Los sistemas terminales acceden a Internet a través de los ISP (Internet Service Provider, Proveedor de servicios de Internet). Cada ISP es en sí mismo una red de conmutadores de paquetes y enlaces de comunicaciones.** Los ISP proporcionan una amplia variedad de tipos de acceso a red a los sistemas terminales, entre los que se incluyen el acceso de banda ancha residencial, mediante módem por cable o DSL.

El objetivo de Internet no es otro que conectar los sistemas terminales entre sí, por lo que los ISP que proporcionan el acceso a los sistemas terminales también tienen que estar interconectados entre ellos. 

Estos ISP de nivel inferior se interconectan a través de ISP de nivel superior nacionales e internacionales, como Level 3 Communications, AT&T, Sprint y NTT. Un ISP de nivel superior está compuesto por routers de alta velocidad interconectados a través de enlaces de fibra óptica de alta velocidad.

![[Pasted image 20250316195618.png]]

Los sistemas terminales, los conmutadores de paquetes y otros dispositivos de Internet ejecutan protocolos que controlan el envío y la recepción de información dentro de Internet. El protocolo TCP cTransmission Control Protocol, Protocolo de control de transmisión) y el protocolo IP (Internet Protocol, Protocolo Internet) son dos de los protocolos más importantes de Internet. El protocolo IP especifica el formato de los paquetes que se envían y reciben entre los routers y los sistemas terminales. Los principales protocolos de Internet se conocen colectivamente como protocolos TCP/IP. 

---

## 1.1.2  Descripción de los servicios

Hasta el momento hemos identificado muchos de los componentes que forman Internet, pero también podemos describir Internet desde un punto de vista completamente diferente, en concreto como **una infraestructura que proporciona servicios a las aplicaciones**. 

Las aplicaciones son **aplicaciones distribuidas**, porque implican a varios sistemas terminales que intercambian datos entre sí. Es importante saber que las aplicaciones de Internet se ejecutan en los sistemas terminales, no en los conmutadores de paquetes que forman el núcleo de la red. *Aunque los dispositivos de conmutación de paquetes facilitan el intercambio de datos entre sistemas terminales, no se preocupan de la aplicación que esté actuando como origen o destino de los datos.*

¿Cómo hace un programa que se ejecuta en un sistema terminal para ordenar a Internet
que entregue datos a otro programa que se ejecuta en otro sistema terminal?: 
- Los sistemas terminales conectados a Internet proporcionan una interfaz de sockets que especifica cómo un programa software, que se ejecuta en un sistema terminal, pide a la infraestructura de Internet que suministre datos a un programa de destino específico que se está ejecutando en otro sistema terminal. **Esta interfaz de sockets de Internet es un conjunto de reglas que el programa que transmite los datos debe cumplir, para que Internet pueda entregar esos datos al programa de destino.**

Acabamos de proporcionar dos descripciones de Internet: una en términos de sus componentes hardware y software, y otra como infraestructura que proporciona servicios a aplicaciones distribuidas.

---

## 1.1.3  ¿Qué es un protocolo?
Un protocolo de red es similar a un protocolo humano, excepto en que las entidades que intercambian mensajes y llevan a cabo las acciones son los componentes hardware o software de cierto dispositivo.  Cualquier actividad de Internet que implique dos o más entidades remotas que se comunican está gobernada por un protocolo. 

![[Pasted image 20250316210136.png]]

**Un protocolo define el formato y el orden de los mensajes intercambiados entre dos o más**
**entidades que se comunican, así como las acciones tomadas al producirse la transmisión y/o recepción de un mensaje u otro suceso.**

----

## 1.2  La frontera de la red

Recuerde de la sección anterior que en la jerga de las redes informáticas, las computadoras y el resto de los dispositivos conectados a Internet a menudo se designan como **sistemas terminales**, porque se sitúan en la frontera de Internet, como se muestra en la Figura 1.3. Entre los sistemas terminales de Internet se incluyen las computadoras de escritorio (por ejemplo, PCs de escritorio, computadoras Mac y equipos Linux), servidores (por ejemplo, servidores web y de correo electrónico) y dispositivos móviles (por ejemplo, computadoras portátiles, teléfonos inteligentes y tabletas). Además, cada vez se conectan más “cosas” no tradicionales a Internet como sistemas terminales (véase el recuadro Historia).

**Los sistemas terminales también se conocen como hosts (huéspedes), ya que albergan (es decir, ejecutan) programas de aplicación tales como navegadores web, servidores web, programas cliente de correo electrónico o servidores de correo electrónico.** A lo largo de este libro utilizaremos indistintamente los términos host y sistema terminal; es decir, host = sistema terminal. En ocasiones, los hosts se clasifican en dos categorías: clientes y servidores.

---

## 1.2.1 Redes de acceso
Una vez vistas las aplicaciones y los sistemas terminales existentes en la “frontera de la red”, podemos pasar a ver las redes de acceso – la red que conecta físicamente un sistema terminal con el primer router (conocido también como “router de frontera”) de la ruta existente entre el sistema terminal y cualquier otro sistema terminal distante. 

![[Pasted image 20250316212945.png]]


### Acceso doméstico: DSL, cable, FTTH, acceso telefónico y satélite

Los principales métodos de acceso a Internet en hogares son:

#### ==1. **DSL (Digital Subscriber Line)**==

- **Usa la línea telefónica existente (par trenzado de cobre)** para transmitir datos y voz al mismo tiempo.
- El **módem DSL** convierte los datos digitales en tonos de alta frecuencia, que viajan a través de la línea telefónica hasta la central telefónica.
- En la central, un equipo llamado **DSLAM** (Digital Subscriber Line Access Multiplexer) convierte esas señales de nuevo a datos digitales y las envía a Internet.

![[Pasted image 20250316213024.png]]

##### Canales separados:

- 📥 **Descarga** (50 kHz a 1 MHz)
- 📤 **Subida** (4 kHz a 50 kHz)
- ☎️ **Telefonía tradicional** (0 kHz a 4 kHz)  
    Esto permite usar el teléfono e Internet **al mismo tiempo**.
![[Pasted image 20250316213045.png]]
##### Componentes:

- **Splitter**: separa señales de voz y datos en la casa.
- **DSLAM**: hace lo mismo en la central y conecta con Internet.

##### Velocidades:

- Hasta **12 Mbps de bajada y 1,8 Mbps de subida** (ITU 1999).
- Hasta **55 Mbps de bajada y 15 Mbps de subida** (ITU 2006).
- Se considera un acceso **asimétrico** porque la bajada es mucho más rápida que la subida.
- Las velocidades reales pueden variar según:
    - Distancia a la central (máx. ~8-16 km)
    - Calidad del cableado
    - Interferencias eléctricas
    - Plan contratado (velocidades limitadas por el proveedor)



#### ==2. **Cable (TV por cable)**==

- Utiliza la **infraestructura de televisión por cable**, combinando **fibra óptica** y **cable coaxial** (sistema **HFC**, Hybrid Fiber Coax).
- La conexión va desde el **terminal de cabecera** (central del proveedor) a **nodos vecinales**, y de ahí por coaxial hasta las casas (500 a 5.000 viviendas por nodo).
- Se usa un **módem por cable** conectado al PC mediante Ethernet.
- Una característica importante del acceso a Internet por cable es que se trata de un medio de difusión compartido. Es decir, cada uno de los paquetes enviados por el extremo de cabecera viaja a través de cada enlace hasta cada vivienda y los paquetes enviados desde las viviendas viajan a través del canal de subida hasta el extremo de cabecera. Así, si varios usuarios descargan simultáneamente un archivo de vídeo a través del canal de descarga, la velocidad real a la que cada usuario recibe su archivo de vídeo será significativamente menor que la velocidad agregada de descarga por cable.

##### Componentes:

- **CMTS (Cable Modem Termination System)**: equivalente al DSLAM, convierte las señales analógicas de muchos usuarios a formato digital.

![[Pasted image 20250316213104.png]]
##### Características:

- También tiene canales separados para:
    - **Descarga** (más rápido)
    - **Subida** (más lento)
- **Acceso asimétrico** como DSL.
- Velocidades con DOCSIS 2.0:
    - 📥 Descarga: hasta **42,8 Mbps**
    - 📤 Subida: hasta **30,7 Mbps**
- Velocidades reales pueden ser menores por:
    - Calidad de la red
    - Plan contratado



#### ==**3. FTTH – Fibra hasta el hogar**==

**FTTH** es una tecnología emergente que ofrece velocidades de acceso a Internet mucho más altas que las tecnologías tradicionales como DSL o cable. Su principal característica es que emplea **fibra óptica directamente desde la central telefónica hasta la vivienda del usuario**.

![[Pasted image 20250316214757.png]]

### 🧠 **Estructura y tecnologías involucradas**

Existen varias formas de implementar FTTH:

1. **Fibra directa**: una fibra óptica dedicada conecta la central directamente con cada hogar. Es la opción más simple, pero también la más costosa por la cantidad de fibra necesaria.
    
2. **Distribución compartida**: lo más común es que una sola fibra óptica desde la central se **comparta entre varias viviendas**, y solo se divida en fibras individuales cerca del destino.
    

### 🔄 **Arquitecturas principales de distribución**

- **AON (Active Optical Network)**:
    
    - Redes ópticas activas.
    - Utilizan conmutadores Ethernet para gestionar el tráfico.
    - Se verán con más detalle en capítulos posteriores.
- **PON (Passive Optical Network)**:
    
    - Redes ópticas pasivas.
    - Muy utilizadas comercialmente (como en el servicio FIOS de Verizon).
    - No requieren componentes electrónicos activos intermedios, lo que las hace más simples y económicas.

### 🏠 **Funcionamiento en redes PON (explicado con componentes)**

- Cada hogar tiene una **ONT (Optical Network Terminator)**.
- La ONT se conecta mediante fibra a un **distribuidor de vecindario**, que agrupa a varias viviendas (normalmente menos de 100).
- Este distribuidor está conectado a una **OLT (Optical Line Terminator)** ubicada en la central telefónica.
- Desde la OLT, los paquetes se **replican y distribuyen** hacia las ONT, como ocurre en las redes de cable.

### 🌐 **Acceso a Internet**

- La ONT en la vivienda se conecta a un **router doméstico**, habitualmente inalámbrico.
- Ese router permite a los usuarios acceder a Internet desde múltiples dispositivos.

### 🚀 **Velocidades de conexión**

- FTTH **puede alcanzar velocidades del orden de gigabits por segundo**, gracias a la alta capacidad de la fibra óptica.
- Sin embargo, los ISP ofrecen planes con **diferentes velocidades según el precio**.
- Según datos de 2011:
    - Velocidad media de descarga en FTTH: **20 Mbps**
    - En redes de cable: **13 Mbps**
    - En redes DSL: **menos de 5 Mbps**


### Acceso empresarial (y doméstico): Ethernet y WiFi
### 🔌 **Ethernet (conexión por cable)**

- Utiliza **cable de cobre de par trenzado** para conectar computadoras a un **switch Ethernet**.
- El switch Ethernet se conecta a la red de la empresa y luego a Internet.
- Velocidades comunes para los usuarios:
    - **100 Mbps** o **1 Gbps** al switch.
- Velocidades para servidores:
    - **1 Gbps** o incluso **10 Gbps**.
- Es una solución común en redes empresariales por su estabilidad y velocidad.
![[Pasted image 20250316215532.png]]
### **WiFi (LAN inalámbrica)**

- Cada vez más personas se conectan de forma **inalámbrica** desde laptops, celulares, tablets, etc.
- Los dispositivos se comunican con un **punto de acceso inalámbrico** (AP) conectado a la red empresarial o doméstica mediante Ethernet.
- El punto de acceso a su vez se conecta a Internet.
- Alcance limitado: los usuarios deben estar a **unas pocas decenas de metros** del punto de acceso.
- La tecnología WiFi se basa en el estándar **IEEE 802.11**.
- Es ubicua: está presente en **hogares, oficinas, universidades, cafés, aeropuertos y hasta en aviones**.

## **Acceso inalámbrico de área extensa: 3G y LTE**

### 📡 **Acceso a través de redes móviles**

- Utilizado por smartphones y dispositivos móviles que se conectan a **estaciones base** de telefonía celular.
- **Diferencia con WiFi**:
    - Alcance mucho mayor: los usuarios pueden estar a **decenas de kilómetros** de la estación base.

### 📶 **3G (Tercera Generación)**

- Infraestructura desarrollada por operadores móviles.
- Proporciona **acceso inalámbrico a Internet** sobre redes de **área extensa**.
- Velocidades: **más de 1 Mbps**.

### 🚀 **4G – LTE (Long-Term Evolution)**

- Evolución de 3G, considerada una tecnología de **cuarta generación**.
- Mejora considerablemente las velocidades:
    - **Más de 10 Mbps**, e incluso **varias decenas de Mbps** en redes comerciales reales.
- LTE se basa en la infraestructura de 3G, pero con capacidades mucho mayores.
- Está ampliamente desplegada y usada en la actualidad.

---
## 1.2.2  Medios Físicos

### **1. Tipos de Medios Físicos**

Los **medios físicos** son los canales por los que se transmiten los bits entre transmisores y receptores, utilizando ondas electromagnéticas o pulsos ópticos. No es necesario que el medio sea del mismo tipo a lo largo de toda la ruta de comunicación.

#### **Clasificación general:**

- **Medios guiados**: Las ondas viajan a través de un medio físico sólido (cable).
- **Medios no guiados**: Las ondas se propagan por el aire o el espacio (inalámbricos).

#### **Costos asociados:**

- El **material del enlace físico** es relativamente barato.
- **El mayor coste** proviene de la **mano de obra** para su instalación.

### **2. Medios guiados**

#### **Cable de cobre de par trenzado**

- **Más barato y común**.
- Los hilos se trenzan para **reducir interferencias**.
- Se usan múltiples pares en un mismo cable (cada par = un enlace).
- El tipo más común en redes LAN es el **UTP (Unshielded Twisted Pair)**.
- Velocidades: **10 Mbps a 10 Gbps**, dependiendo del grosor y la distancia.
- Dominante en redes LAN de alta velocidad.

#### **Cable coaxial**

- Proporciona **altas velocidades** gracias a su aislamiento y apantallamiento.
- Uso común: **TV por cable** y **acceso a Internet por cable**.
- Puede funcionar como medio **compartido**, conectando varios dispositivos al mismo cable.

#### **Fibra óptica**

- Transmite datos mediante **pulsos de luz**.
- Soporta velocidades **muy altas** (hasta cientos de Gbps).
- **Ventajas**: baja atenuación, inmunidad a interferencias, alta seguridad.
- Uso: enlaces de **larga distancia**, como cables submarinos y troncales de Internet.
- **Desventaja**: alto costo de equipos ópticos (transmisores, receptores, switches), lo que limita su uso en distancias cortas.

### **3. Medios no guiados**

#### **Canales de radio terrestres**

- Transmiten señales por el **espectro electromagnético**.
- **Ventajas**: no requieren cables, atraviesan paredes, permiten movilidad, cubren largas distancias.
- **Factores que afectan la señal**:
    - Atenuación por distancia y obstáculos.
    - Atenuación multicamino (reflejos).
    - Interferencias.
- **Clasificación** por alcance:
    - **Muy corto** (1–2 m): dispositivos personales (auriculares, teclados, etc.).
    - **Local** (10–100 m): redes LAN inalámbricas.
    - **Extenso** (varios km): redes celulares.

#### **Canales de radio vía satélite**

- Utilizan **satélites de comunicaciones** para enlazar estaciones terrestres.
- El satélite recibe, regenera y reenvía la señal en otra frecuencia.
- **Tipos de satélites**:
    - **Geoestacionarios**: a 36.000 km de la Tierra, siempre sobre el mismo punto. Introducen retardo de ~280 ms.
    - **LEO (Low Earth Orbiting)**: satélites en órbitas bajas.

---
## 1.3 El núcleo de la red
Una vez que hemos examinado la frontera de Internet, vamos a adentrarnos en el núcleo de la red, la malla de conmutadores de paquetes y enlaces que interconectan los sistemas terminales de Internet.

---
## 1.3.1 Conmutación de paquetes