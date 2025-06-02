<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmartHome Tech - Умные решения для вашего комфорта</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        :root {
            --primary: #1e5fbe;
            --secondary: #f5f5f5;
            --accent: #ff7a00;
            --dark: #333;
            --light: #fff;
        }
        
        body {
            background-color: #f9f9f9;
            color: var(--dark);
            line-height: 1.6;
        }
        
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }
        
        /* Header Styles */
        header {
            background-color: var(--light);
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }
        
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
        }
        
        .logo {
            display: flex;
            align-items: center;
        }
        
        .logo img {
            height: 50px;
            margin-right: 15px;
        }
        
        .logo h1 {
            font-size: 24px;
            color: var(--primary);
            font-weight: 700;
        }
        
        .nav-links {
            display: flex;
            list-style: none;
        }
        
        .nav-links li {
            margin-left: 25px;
        }
        
        .nav-links a {
            text-decoration: none;
            color: var(--dark);
            font-weight: 500;
            font-size: 16px;
            transition: color 0.3s;
        }
        
        .nav-links a:hover {
            color: var(--primary);
        }
        
        .search-bar {
            display: flex;
            align-items: center;
            background: var(--secondary);
            border-radius: 30px;
            padding: 5px 15px;
        }
        
        .search-bar input {
            border: none;
            background: transparent;
            padding: 8px;
            outline: none;
            width: 180px;
        }
        
        .search-bar button {
            background: transparent;
            border: none;
            cursor: pointer;
            color: var(--dark);
        }
        
        /* Hero Section */
        .hero {
            background: linear-gradient(rgba(30, 95, 190, 0.8), rgba(30, 95, 190, 0.9)), url('https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1200&q=80');
            background-size: cover;
            background-position: center;
            color: var(--light);
            padding: 100px 0;
            text-align: center;
        }
        
        .hero-content {
            max-width: 800px;
            margin: 0 auto;
        }
        
        .hero h2 {
            font-size: 3rem;
            margin-bottom: 20px;
            line-height: 1.2;
        }
        
        .hero p {
            font-size: 1.2rem;
            margin-bottom: 30px;
        }
        
        .usp {
            background-color: var(--accent);
            color: white;
            padding: 10px 20px;
            border-radius: 30px;
            display: inline-block;
            font-weight: bold;
            margin: 20px 0;
            font-size: 1.4rem;
        }
        
        .cta-button {
            display: inline-block;
            background-color: var(--accent);
            color: var(--light);
            padding: 15px 35px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: 600;
            font-size: 18px;
            transition: transform 0.3s, background-color 0.3s;
            margin-top: 20px;
        }
        
        .cta-button:hover {
            transform: translateY(-3px);
            background-color: #e56d00;
        }
        
        /* Market Analysis */
        .section {
            padding: 80px 0;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 60px;
        }
        
        .section-title h2 {
            font-size: 2.5rem;
            color: var(--primary);
            position: relative;
            display: inline-block;
            padding-bottom: 15px;
        }
        
        .section-title h2::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background-color: var(--accent);
            border-radius: 2px;
        }
        
        .market-analysis {
            background-color: var(--light);
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            border-radius: 10px;
            padding: 30px;
            margin-bottom: 30px;
        }
        
        .tabs {
            display: flex;
            justify-content: center;
            margin-bottom: 30px;
        }
        
        .tab-button {
            padding: 12px 25px;
            background-color: var(--secondary);
            border: none;
            border-radius: 30px;
            margin: 0 10px;
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s;
        }
        
        .tab-button.active {
            background-color: var(--primary);
            color: white;
        }
        
        .tab-content {
            display: none;
        }
        
        .tab-content.active {
            display: block;
        }
        
        .trend-card {
            background-color: var(--secondary);
            border-radius: 10px;
            padding: 25px;
            margin-bottom: 20px;
            transition: transform 0.3s;
        }
        
        .trend-card:hover {
            transform: translateY(-5px);
        }
        
        .trend-card h3 {
            color: var(--primary);
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }
        
        .trend-card h3 i {
            margin-right: 10px;
            color: var(--accent);
        }
        
        .trend-card ul {
            padding-left: 20px;
        }
        
        .trend-card li {
            margin-bottom: 8px;
        }
        
        /* Products Section */
        .products {
            background-color: var(--secondary);
        }
        
        .filters {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 15px;
            margin-bottom: 40px;
        }
        
        .filter-option {
            padding: 10px 20px;
            background-color: var(--light);
            border: 1px solid #ddd;
            border-radius: 30px;
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .filter-option.active, .filter-option:hover {
            background-color: var(--primary);
            color: white;
            border-color: var(--primary);
        }
        
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 30px;
        }
        
        .product-card {
            background-color: var(--light);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            transition: transform 0.3s;
        }
        
        .product-card:hover {
            transform: translateY(-10px);
        }
        
        .product-image {
            height: 200px;
            background-color: #eaeaea;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3rem;
            color: var(--primary);
        }
        
        .product-info {
            padding: 20px;
        }
        
        .product-info h3 {
            margin-bottom: 10px;
            color: var(--dark);
        }
        
        .product-info p {
            color: #666;
            margin-bottom: 15px;
            font-size: 0.9rem;
        }
        
        .product-price {
            font-weight: bold;
            font-size: 1.2rem;
            color: var(--primary);
            margin-bottom: 15px;
        }
        
        /* Blog Section */
        .blog-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 30px;
        }
        
        .blog-card {
            background-color: var(--light);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
        }
        
        .blog-image {
            height: 200px;
            background-color: #eaeaea;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3rem;
            color: var(--accent);
        }
        
        .blog-content {
            padding: 25px;
        }
        
        .blog-content h3 {
            margin-bottom: 15px;
            color: var(--primary);
        }
        
        .blog-content p {
            color: #666;
            margin-bottom: 20px;
        }
        
        .read-more {
            color: var(--primary);
            text-decoration: none;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
        }
        
        .read-more i {
            margin-left: 5px;
            transition: transform 0.3s;
        }
        
        .read-more:hover i {
            transform: translateX(5px);
        }
        
        /* B2B Section */
        .b2b-section {
            background: linear-gradient(to right, var(--primary), #3a7bda);
            color: var(--light);
            border-radius: 10px;
            overflow: hidden;
        }
        
        .b2b-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
        }
        
        .b2b-content {
            padding: 40px;
        }
        
        .b2b-content h2 {
            margin-bottom: 20px;
            font-size: 2.2rem;
        }
        
        .b2b-form {
            background-color: rgba(255,255,255,0.1);
            backdrop-filter: blur(10px);
            padding: 40px;
            border-radius: 10px;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
        }
        
        .form-group input, .form-group textarea {
            width: 100%;
            padding: 12px 15px;
            border: none;
            border-radius: 8px;
            background-color: rgba(255,255,255,0.15);
            color: white;
        }
        
        .form-group input::placeholder, .form-group textarea::placeholder {
            color: rgba(255,255,255,0.7);
        }
        
        .submit-btn {
            background-color: var(--accent);
            color: white;
            border: none;
            padding: 15px 30px;
            border-radius: 30px;
            font-weight: 600;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }
        
        .submit-btn:hover {
            background-color: #e56d00;
        }
        
        /* Social Section */
        .social-section {
            background-color: var(--light);
        }
        
        .social-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }
        
        .social-card {
            background-color: var(--secondary);
            border-radius: 10px;
            padding: 30px;
            text-align: center;
            transition: transform 0.3s;
        }
        
        .social-card:hover {
            transform: translateY(-10px);
        }
        
        .social-icon {
            font-size: 3rem;
            margin-bottom: 20px;
        }
        
        .social-card h3 {
            color: var(--primary);
            margin-bottom: 15px;
        }
        
        .qr-code {
            width: 150px;
            height: 150px;
            background-color: #eaeaea;
            margin: 20px auto;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            color: var(--dark);
            font-weight: bold;
        }
        
        /* Footer */
        footer {
            background-color: var(--dark);
            color: var(--light);
            padding: 60px 0 30px;
        }
        
        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
            margin-bottom: 40px;
        }
        
        .footer-column h3 {
            color: var(--accent);
            margin-bottom: 20px;
            font-size: 1.3rem;
        }
        
        .footer-column ul {
            list-style: none;
        }
        
        .footer-column ul li {
            margin-bottom: 12px;
        }
        
        .footer-column a {
            color: #bbb;
            text-decoration: none;
            transition: color 0.3s;
        }
        
        .footer-column a:hover {
            color: var(--accent);
        }
        
        .social-links {
            display: flex;
            gap: 15px;
            margin-top: 20px;
        }
        
        .social-links a {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background-color: rgba(255,255,255,0.1);
            border-radius: 50%;
            color: white;
            transition: background-color 0.3s;
        }
        
        .social-links a:hover {
            background-color: var(--accent);
        }
        
        .newsletter input {
            width: 100%;
            padding: 12px 15px;
            border: none;
            border-radius: 30px;
            margin-bottom: 15px;
            background-color: rgba(255,255,255,0.1);
            color: white;
        }
        
        .copyright {
            text-align: center;
            padding-top: 30px;
            border-top: 1px solid rgba(255,255,255,0.1);
            color: #bbb;
            font-size: 0.9rem;
        }
        
        /* Responsive Design */
        @media (max-width: 992px) {
            .b2b-container {
                grid-template-columns: 1fr;
            }
            
            .hero h2 {
                font-size: 2.5rem;
            }
        }
        
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }
            
            .nav-links {
                margin-top: 20px;
                flex-wrap: wrap;
            }
            
            .nav-links li {
                margin: 5px 15px 5px 0;
            }
            
            .search-bar {
                margin-top: 15px;
                width: 100%;
            }
            
            .search-bar input {
                width: 100%;
            }
            
            .hero {
                padding: 70px 0;
            }
            
            .hero h2 {
                font-size: 2rem;
            }
            
            .section {
                padding: 60px 0;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container">
            <nav class="navbar">
                <div class="logo">
                    <i class="fas fa-home fa-2x" style="color: var(--primary);"></i>
                    <h1>SmartHome Tech</h1>
                </div>
                <ul class="nav-links">
                    <li><a href="#catalog">Каталог</a></li>
                    <li><a href="#blog">Блог</a></li>
                    <li><a href="#b2b">B2B</a></li>
                    <li><a href="#contact">Контакты</a></li>
                </ul>
                <div class="search-bar">
                    <input type="text" placeholder="Поиск продуктов...">
                    <button><i class="fas fa-search"></i></button>
                </div>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <div class="hero-content">
                <h2>Умный дом за 5 минут</h2>
                <div class="usp">Умные решения для вашего комфорта</div>
                <p>Оборудуйте свой дом передовыми технологиями SmartHome Tech для безопасности, комфорта и энергоэффективности</p>
                <a href="#catalog" class="cta-button">Смотреть продукты</a>
            </div>
        </div>
    </section>

    <!-- Market Analysis Section -->
    <section class="section">
        <div class="container">
            <div class="section-title">
                <h2>Анализ рынка и конкурентов</h2>
            </div>
            
            <div class="tabs">
                <button class="tab-button active" data-tab="trends">Тренды</button>
                <button class="tab-button" data-tab="audience">Целевая аудитория</button>
                <button class="tab-button" data-tab="competitors">Конкуренты</button>
            </div>
            
            <div class="tab-content active" id="trends-content">
                <div class="market-analysis">
                    <div class="trend-card">
                        <h3><i class="fas fa-globe-americas"></i> Мировые тренды</h3>
                        <ul>
                            <li>Интеграция искусственного интеллекта (AI)</li>
                            <li>Голосовое управление (Alexa, Google Home)</li>
                            <li>Экологичность и энергосбережение</li>
                        </ul>
                    </div>
                    
                    <div class="trend-card">
                        <h3><i class="fas fa-map-marker-alt"></i> Локальные особенности</h3>
                        <ul>
                            <li><strong>Китай:</strong> Акцент на безопасность и многофункциональность</li>
                            <li><strong>Россия:</strong> Простота установки, совместимость с Яндекс.Алисой</li>
                        </ul>
                    </div>
                    
                    <div class="trend-card">
                        <h3><i class="fas fa-hashtag"></i> Digital-тренды</h3>
                        <ul>
                            <li>AR-приложения для визуализации устройств в интерьере</li>
                            <li>Видеообзоры и unboxing-ролики на YouTube/Douyin</li>
                            <li>Конкурсы с хештегами (#SmartHomeTechLife)</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="tab-content" id="audience-content">
                <div class="market-analysis">
                    <div class="trend-card">
                        <h3><i class="fas fa-flag"></i> Китайская аудитория</h3>
                        <ul>
                            <li><strong>Возраст:</strong> 25-40 лет</li>
                            <li><strong>Интересы:</strong> Технологии, безопасность, статусность</li>
                            <li><strong>Каналы:</strong> WeChat, Weibo, Douyin, Taobao Live</li>
                        </ul>
                    </div>
                    
                    <div class="trend-card">
                        <h3><i class="fas fa-flag"></i> Российская аудитория</h3>
                        <ul>
                            <li><strong>Возраст:</strong> 20-45 лет</li>
                            <li><strong>Интересы:</strong> DIY, умные гаджеты, энергоэффективность</li>
                            <li><strong>Каналы:</strong> VK, YouTube, Telegram, Яндекс.Дзен</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="tab-content" id="competitors-content">
                <div class="market-analysis">
                    <div class="trend-card">
                        <h3><i class="fas fa-chart-line"></i> Стратегии конкурентов</h3>
                        <ul>
                            <li>SEO-оптимизированные сайты с блогами</li>
                            <li>YouTube-каналы с обучающими видео</li>
                            <li>Таргетированная реклама в соцсетях</li>
                        </ul>
                    </div>
                    
                    <div class="trend-card">
                        <h3><i class="fas fa-lightbulb"></i> Особенности конкурентов</h3>
                        <ul>
                            <li><strong>Xiaomi:</strong> Упор на экосистему устройств</li>
                            <li><strong>Tuya:</strong> Партнерство с локальными брендами</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Products Section -->
    <section id="catalog" class="section products">
        <div class="container">
            <div class="section-title">
                <h2>Наши продукты</h2>
            </div>
            
            <div class="filters">
                <div class="filter-option active">Все устройства</div>
                <div class="filter-option">Освещение</div>
                <div class="filter-option">Безопасность</div>
                <div class="filter-option">Энергосбережение</div>
                <div class="filter-option">Совместимые с Яндекс.Алисой</div>
            </div>
            
            <div class="product-grid">
                <div class="product-card">
                    <div class="product-image">
                        <i class="fas fa-lightbulb"></i>
                    </div>
                    <div class="product-info">
                        <h3>Умная лампа</h3>
                        <p>Управляйте освещением со смартфона или голосом. Регулируйте яркость и цветовую температуру.</p>
                        <div class="product-price">1 990 ₽</div>
                        <button class="cta-button">Подробнее</button>
                    </div>
                </div>
                
                <div class="product-card">
                    <div class="product-image">
                        <i class="fas fa-video"></i>
                    </div>
                    <div class="product-info">
                        <h3>Камера с ИИ</h3>
                        <p>Умная камера безопасности с распознаванием лиц и ночным видением.</p>
                        <div class="product-price">4 490 ₽</div>
                        <button class="cta-button">Подробнее</button>
                    </div>
                </div>
                
                <div class="product-card">
                    <div class="product-image">
                        <i class="fas fa-plug"></i>
                    </div>
                    <div class="product-info">
                        <h3>Умная розетка</h3>
                        <p>Управляйте электроприборами удаленно и контролируйте энергопотребление.</p>
                        <div class="product-price">1 290 ₽</div>
                        <button class="cta-button">Подробнее</button>
                    </div>
                </div>
                
                <div class="product-card">
                    <div class="product-image">
                        <i class="fas fa-temperature-high"></i>
                    </div>
                    <div class="product-info">
                        <h3>Умный термостат</h3>
                        <p>Оптимизируйте отопление и кондиционирование для экономии энергии.</p>
                        <div class="product-price">6 990 ₽</div>
                        <button class="cta-button">Подробнее</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Blog Section -->
    <section id="blog" class="section">
        <div class="container">
            <div class="section-title">
                <h2>Блог</h2>
            </div>
            
            <div class="blog-grid">
                <div class="blog-card">
                    <div class="blog-image">
                        <i class="fas fa-solar-panel"></i>
                    </div>
                    <div class="blog-content">
                        <h3>Как экономить электричество с умными розетками</h3>
                        <p>Практические советы по сокращению расходов на электроэнергию с помощью умных решений SmartHome Tech.</p>
                        <a href="#" class="read-more">Читать статью <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <div class="blog-card">
                    <div class="blog-image">
                        <i class="fas fa-microphone-alt"></i>
                    </div>
                    <div class="blog-content">
                        <h3>Интеграция с Яндекс.Алисой</h3>
                        <p>Полное руководство по настройке и использованию умного дома с голосовым помощником Алисой.</p>
                        <a href="#" class="read-more">Читать статью <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <div class="blog-card">
                    <div class="blog-image">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="blog-content">
                        <h3>Выбор умной системы безопасности</h3>
                        <p>Как подобрать оптимальную систему безопасности для квартиры, дома или офиса.</p>
                        <a href="#" class="read-more">Читать статью <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- B2B Section -->
    <section id="b2b" class="section">
        <div class="container">
            <div class="section-title">
                <h2>B2B Решения</h2>
            </div>
            
            <div class="b2b-section">
                <div class="b2b-container">
                    <div class="b2b-content">
                        <h2>Партнерство с SmartHome Tech</h2>
                        <p>Станьте нашим партнером и получите выгодные условия для оптовых закупок оборудования.</p>
                        <p>Мы предлагаем специальные условия для строительных компаний, ритейлеров и системных интеграторов.</p>
                        <ul style="margin-top: 20px;">
                            <li>Индивидуальные условия сотрудничества</li>
                            <li>Техническая поддержка и обучение</li>
                            <li>Маркетинговая поддержка</li>
                            <li>Эксклюзивные линейки продуктов</li>
                        </ul>
                    </div>
                    
                    <div class="b2b-form">
                        <div class="form-group">
                            <label for="name">Имя</label>
                            <input type="text" id="name" placeholder="Ваше имя">
                        </div>
                        
                        <div class="form-group">
                            <label for="company">Компания</label>
                            <input type="text" id="company" placeholder="Название компании">
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" placeholder="Ваш email">
                        </div>
                        
                        <div class="form-group">
                            <label for="phone">Телефон</label>
                            <input type="tel" id="phone" placeholder="Ваш телефон">
                        </div>
                        
                        <div class="form-group">
                            <label for="message">Сообщение</label>
                            <textarea id="message" rows="4" placeholder="Ваше сообщение или запрос"></textarea>
                        </div>
                        
                        <button class="submit-btn">Отправить запрос</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Social Media Section -->
    <section class="section social-section">
        <div class="container">
            <div class="section-title">
                <h2>Мы в социальных сетях</h2>
            </div>
            
            <div class="social-grid">
                <div class="social-card">
                    <div class="social-icon" style="color: #2787F5;">
                        <i class="fab fa-vk"></i>
                    </div>
                    <h3>VK</h3>
                    <p>Следите за нами во ВКонтакте: видеообзоры, конкурсы и акции</p>
                    <div class="qr-code">QR-код</div>
                </div>
                
                <div class="social-card">
                    <div class="social-icon" style="color: #FF0000;">
                        <i class="fab fa-youtube"></i>
                    </div>
                    <h3>YouTube</h3>
                    <p>Смотрите наши видеообзоры и unboxing-ролики</p>
                    <div class="qr-code">QR-код</div>
                </div>
                
                <div class="social-card">
                    <div class="social-icon" style="color: #0088CC;">
                        <i class="fab fa-telegram"></i>
                    </div>
                    <h3>Telegram</h3>
                    <p>Чат-бот для поддержки и автоматизации заказов</p>
                    <div class="qr-code">QR-код</div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer id="contact">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-column">
                    <h3>SmartHome Tech</h3>
                    <p>Умные решения для вашего комфорта и безопасности.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-vk"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                        <a href="#"><i class="fab fa-telegram"></i></a>
                        <a href="#"><i class="fab fa-weixin"></i></a>
                        <a href="#"><i class="fab fa-douyin"></i></a>
                    </div>
                </div>
                
                <div class="footer-column">
                    <h3>Каталог</h3>
                    <ul>
                        <li><a href="#">Умное освещение</a></li>
                        <li><a href="#">Системы безопасности</a></li>
                        <li><a href="#">Энергосбережение</a></li>
                        <li><a href="#">Управление климатом</a></li>
                        <li><a href="#">Аксессуары</a></li>
                    </ul>
                </div>
                
                <div class="footer-column">
                    <h3>Поддержка</h3>
                    <ul>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Техническая поддержка</a></li>
                        <li><a href="#">Установка и настройка</a></li>
                        <li><a href="#">Гарантия и возврат</a></li>
                        <li><a href="#">Контакты</a></li>
                    </ul>
                </div>
                
                <div class="footer-column newsletter">
                    <h3>Рассылка</h3>
                    <p>Подпишитесь на новости и акции</p>
                    <input type="email" placeholder="Ваш email">
                    <button class="submit-btn">Подписаться</button>
                </div>
            </div>
            
            <div class="copyright">
                <p>© 2025 SmartHome Tech. Все права защищены. Разработка и продвижение сайта: Ли Чжохэн, Сюй Мэнъяо, Чжао Бинь</p>
            </div>
        </div>
    </footer>

    <script>
        // Tab functionality
        const tabButtons = document.querySelectorAll('.tab-button');
        const tabContents = document.querySelectorAll('.tab-content');
        
        tabButtons.forEach(button => {
            button.addEventListener('click', () => {
                // Remove active class from all buttons and contents
                tabButtons.forEach(btn => btn.classList.remove('active'));
                tabContents.forEach(content => content.classList.remove('active'));
                
                // Add active class to clicked button
                button.classList.add('active');
                
                // Show corresponding content
                const tabId = button.getAttribute('data-tab') + '-content';
                document.getElementById(tabId).classList.add('active');
            });
        });
        
        // Filter functionality
        const filterOptions = document.querySelectorAll('.filter-option');
        
        filterOptions.forEach(option => {
            option.addEventListener('click', () => {
                filterOptions.forEach(opt => opt.classList.remove('active'));
                option.classList.add('active');
                // In a real implementation, this would filter products
            });
        });
        
        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });
    </script>
</body>
</html>
