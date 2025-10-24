import 'package:flutter/material.dart';

import '../../yo_ui.dart';

enum YoColorScheme {
  // Original 30 - dengan penamaan yang sudah diperbaiki
  defaultScheme, // sebelumnya defaultScheme - Finance & Banking
  techPurple, // sebelumnya bluePurple - Technology & SaaS
  oceanTeal, // sebelumnya oceanGreen - Healthcare & Medical
  energyRed, // sebelumnya redPink - Social Media & Entertainment
  educationIndigo, // sebelumnya slateIndigo - Education & E-learning
  productivityGreen, // sebelumnya leafYellow - Productivity & Task Management
  creativeMagenta, // sebelumnya magentaNavy - Creative & Design
  wellnessMint, // sebelumnya mintGreen - Wellness & Meditation
  retailClay, // sebelumnya clayBeige - E-commerce & Retail
  travelCoral, // sebelumnya coralNavy - Travel & Hospitality
  foodAmber, // sebelumnya honeyAmber - Food & Beverage
  romanticRose, // sebelumnya blushRose - Wedding & Events
  natureEvergreen, // sebelumnya tealEvergreen - Environment & Sustainability
  corporateModern, // sebelumnya modernCorporate - Enterprise & B2B
  startupVibrant, // sebelumnya vibrantStartup - Startup & Innovation
  luxuryMinimal, // sebelumnya minimalistBlack - Luxury & Premium
  healthcarePro, // tetap - Professional Healthcare
  fitnessEnergy, // tetap - Fitness & Sports
  newsMagazine, // tetap - News & Media
  gamingNeon, // tetap - Gaming & Esports
  cryptoModern, // tetap - Cryptocurrency & Fintech
  kidsLearning, // sebelumnya learningFun - Kids Education & Fun
  realEstatePro, // tetap - Property & Real Estate
  musicVibes, // tetap - Music & Streaming
  artGallery, // tetap - Art & Museum
  codingDark, // sebelumnya techDark - Developer & Coding
  outdoorCalm, // sebelumnya natureCalm - Outdoor & Gardening
  fashionTrendy, // tetap - Fashion & Style
  scienceLab, // tetap - Science & Research
  communityWarm, // tetap - Community & Forum
  legalJustice, // Legal & Law Apps - Keadilan & Kepercayaan
  agricultureFresh, // Agriculture & Farming - Segar & Alam
  constructionSolid, // Construction & Building - Kokoh & Terpercaya
  logisticsSwift, // Logistics & Delivery - Cepat & Efisien
  datingRomance, // Dating & Relationships - Romantis & Hangat
  weatherSky, // Weather & Forecast - Langit & Cuaca
  aviationSky, // Aviation & Flight - Terbang & Luas
  marineOcean, // Marine & Nautical - Laut & Kedalaman
  spaceCosmic, // Space & Astronomy - Kosmos & Misteri
  desertSand, // Desert & Arid - Gurun & Kekosongan
  arcticFrost, // Arctic & Cold - Dingin & Bersih
  volcanicFire, // Volcanic & Energy - Api & Energi
  forestWood, // Forest & Trees - Kayu & Alam
  mountainPeak, // Mountain & Hiking - Puncak & Prestasi
  tropicalVibrant, // Tropical & Exotic - Eksotis & Ceria
  vintageRetro, // Vintage & Retro - Klasik & Nostalgia
  futuristicNeon, // Futuristic & Sci-fi - Masa Depan & Teknologi
  elegantGold, // Elegant & Luxury - Emas & Megah
  minimalistClean, // Minimalist & Clean - Bersih & Sederhana
  urbanStreet, // Urban & Street - Kota & Gaya
  corporateBlue, // Corporate & Business Apps
  financeTrust, // Banking & Finance
  healthcareClean, // Healthcare & Medical
  educationVibrant, // Education & Learning
  productivityFocus, // Productivity & Tasks
  // Technology & Digital
  techModern, // Tech & SaaS Platforms
  developerDark, // Developer Tools
  startupEnergy, // Startups & Innovation
  cryptoBold, // Cryptocurrency
  aiFuturistic, // AI & Machine Learning
  // Social & Entertainment
  socialWarm, // Social Media
  datingRomantic, // Dating Apps
  musicDynamic, // Music Streaming
  gamingVibrant, // Gaming & Esports
  streamingDark, // Video Streaming
  // Lifestyle & Daily Use
  fitnessMotivation, // Fitness & Health
  foodAppetizing, // Food Delivery
  travelAdventure, // Travel & Booking
  shoppingRetail, // E-commerce & Retail
  weatherCalm, // Weather Apps
  // Creative & Design
  creativeArtistic, // Design Tools
  photographyElegant, // Photo Editing
  writingFocus, // Writing Apps
  artGallery2, // Art Platforms
  fashionTrendy2, // Fashion & Style
  // Specialized Industries
  realEstateLuxury, // Real Estate
  automotivePower, // Automotive
  aviationSky2, // Aviation
  marineDeep, // Marine & Nautical
  spaceCosmic2, // Space & Astronomy
  // Community & Services
  communityFriendly, // Community Apps
  newsProfessional, // News & Media
  eventsCelebration, // Event Planning
  bookingEfficient, // Booking Systems
  deliverySwift, // Delivery Services
  // Nature & Environment
  natureFresh, // Nature & Outdoor
  ecoSustainable, // Sustainability
  gardenCalm, // Gardening
  animalWarm, // Pet Care
  oceanSerene, // Ocean & Marine
  // Luxury & Premium
  luxuryGold, // Luxury Brands
  premiumElegant, // Premium Services
  minimalClean, // Minimalist Design
  modernSophisticated, // Modern Luxury
  classicTimeless, // Classic Style
  // Special Use Cases
  kidsPlayful, // Kids Apps
  learningInteractive, // Interactive Learning
  meditationCalm, // Meditation & Wellness
  financeBudget, // Budget Tracking
  securityTrust, // Security Apps
  // Additional Categories
  sportsEnergy, // Sports & Athletics
  fashionLuxury, // High Fashion
  techSupport, // Customer Support
  analyticsData, // Analytics & Data
  governmentOfficial, // Government Apps
}

/// 1 map → isinya light & dark sekaligus
final Map<YoColorScheme, Map<Brightness, YoCorePalette>> kYoPalettes = {
  // ORIGINAL 30 - dengan penamaan baru dan kontras teruji

  // ClassicBlue - Finance & Banking (Trust & Professional)
  YoColorScheme.defaultScheme: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1a1a1a),
      background: Color(0xFFffffff),
      primary: Color(0xFF0066cc),
      secondary: Color(0xFF00a86b),
      accent: Color(0xFFe63946),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf5f5f5),
      background: Color(0xFF121212),
      primary: Color(0xFF4d9fff),
      secondary: Color(0xFF00d48a),
      accent: Color(0xFFff6b6b),
    ),
  },

  // TechPurple - Technology & SaaS (Innovation & Creativity)
  YoColorScheme.techPurple: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1a1a2e),
      background: Color(0xFFf8f9ff),
      primary: Color(0xFF5b4cff),
      secondary: Color(0xFF8c82ff),
      accent: Color(0xFFff4ea7),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe6e6fa),
      background: Color(0xFF0a0a1a),
      primary: Color(0xFF7c6fff),
      secondary: Color(0xFFa49bff),
      accent: Color(0xFFff6eb9),
    ),
  },

  // OceanTeal - Healthcare & Medical (Balance & Growth)
  YoColorScheme.oceanTeal: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF002b1c),
      background: Color(0xFFf0fff8),
      primary: Color(0xFF00a878),
      secondary: Color(0xFF4ecdc4),
      accent: Color(0xFFff9f1c),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe0fff5),
      background: Color(0xFF001a12),
      primary: Color(0xFF00c78e),
      secondary: Color(0xFF5de5dc),
      accent: Color(0xFFffb03d),
    ),
  },

  // EnergyRed - Social Media & Entertainment (Energy & Excitement)
  YoColorScheme.energyRed: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF2b0008),
      background: Color(0xFFfff5f7),
      primary: Color(0xFFe4002b),
      secondary: Color(0xFFff7b9c),
      accent: Color(0xFF00c0cc),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFffe6eb),
      background: Color(0xFF1a0004),
      primary: Color(0xFFff1a47),
      secondary: Color(0xFFff8fb0),
      accent: Color(0xFF00d9e6),
    ),
  },

  // EducationIndigo - Education & E-learning (Focus & Stability)
  YoColorScheme.educationIndigo: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0f111a),
      background: Color(0xFFf7f8fd),
      primary: Color(0xFF3f4c8a),
      secondary: Color(0xFF6b76c4),
      accent: Color(0xFFf9c24e),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf0f2ff),
      background: Color(0xFF080a11),
      primary: Color(0xFF5a6abf),
      secondary: Color(0xFF8a94e4),
      accent: Color(0xFFffd063),
    ),
  },

  // ProductivityGreen - Productivity & Task Management (Positive Energy)
  YoColorScheme.productivityGreen: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1a1a00),
      background: Color(0xFFfefff0),
      primary: Color(0xFF6ea31a),
      secondary: Color(0xFFa8c832),
      accent: Color(0xFFff6b35),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfdffe6),
      background: Color(0xFF0d0d00),
      primary: Color(0xFF8bc34a),
      secondary: Color(0xFFc3d84b),
      accent: Color(0xFFff8555),
    ),
  },

  // CreativeMagenta - Creative & Design (Artistic & Innovative)
  YoColorScheme.creativeMagenta: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0b0b28),
      background: Color(0xFFfafaff),
      primary: Color(0xFFd5007f),
      secondary: Color(0xFF3f51b5),
      accent: Color(0xFF00e5c9),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf0f0ff),
      background: Color(0xFF050516),
      primary: Color(0xFFff0984),
      secondary: Color(0xFF5c6bc0),
      accent: Color(0xFF1ff8df),
    ),
  },

  // WellnessMint - Wellness & Meditation (Calm & Balance)
  YoColorScheme.wellnessMint: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF002e1f),
      background: Color(0xFFf0fffa),
      primary: Color(0xFF00b894),
      secondary: Color(0xFF55efc4),
      accent: Color(0xFFfd79a8),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe6fff7),
      background: Color(0xFF00140e),
      primary: Color(0xFF00d9a0),
      secondary: Color(0xFF73ffd2),
      accent: Color(0xFFff9bc0),
    ),
  },

  // RetailClay - E-commerce & Retail (Warm & Approachable)
  YoColorScheme.retailClay: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF2a1e13),
      background: Color(0xFFfdf8f2),
      primary: Color(0xFFa06a46),
      secondary: Color(0xFFd8a070),
      accent: Color(0xFF5e9e7f),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfdf2e6),
      background: Color(0xFF140e08),
      primary: Color(0xFFc0875c),
      secondary: Color(0xFFe8b880),
      accent: Color(0xFF7bc097),
    ),
  },

  // TravelCoral - Travel & Hospitality (Adventure & Trust)
  YoColorScheme.travelCoral: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF001f3f),
      background: Color(0xFFf5f9ff),
      primary: Color(0xFFff6f61),
      secondary: Color(0xFF003366),
      accent: Color(0xFFffd166),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe6f2ff),
      background: Color(0xFF001225),
      primary: Color(0xFFff8a7a),
      secondary: Color(0xFF004c8c),
      accent: Color(0xFFffe18a),
    ),
  },

  // FoodAmber - Food & Beverage (Warmth & Delicious)
  YoColorScheme.foodAmber: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1f1600),
      background: Color(0xFFfffcf0),
      primary: Color(0xFFffb703),
      secondary: Color(0xFFfb8500),
      accent: Color(0xFF8ac926),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfff8e1),
      background: Color(0xFF140e00),
      primary: Color(0xFFffc733),
      secondary: Color(0xFFff981a),
      accent: Color(0xFFa1d144),
    ),
  },

  // RomanticRose - Wedding & Events (Romantic & Elegant)
  YoColorScheme.romanticRose: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF2e0d14),
      background: Color(0xFFfff5f7),
      primary: Color(0xFFe85a82),
      secondary: Color(0xFFd499b9),
      accent: Color(0xFF4ecdc4),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFffeef2),
      background: Color(0xFF15060a),
      primary: Color(0xFFff7599),
      secondary: Color(0xFFe8b5cc),
      accent: Color(0xFF5de5dc),
    ),
  },

  // NatureEvergreen - Environment & Sustainability (Nature & Harmony)
  YoColorScheme.natureEvergreen: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF002b2b),
      background: Color(0xFFf0fffe),
      primary: Color(0xFF008080),
      secondary: Color(0xFF2e8b57),
      accent: Color(0xFFffa62b),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe6fffe),
      background: Color(0xFF001515),
      primary: Color(0xFF00a3a3),
      secondary: Color(0xFF40b070),
      accent: Color(0xFFffb950),
    ),
  },

  // CorporateModern - Enterprise & B2B (Professional & Modern)
  YoColorScheme.corporateModern: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1c1c1c),
      background: Color(0xFFfafafa),
      primary: Color(0xFF1976d2),
      secondary: Color(0xFF424242),
      accent: Color(0xFFff4081),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFffffff),
      background: Color(0xFF121212),
      primary: Color(0xFF42a5f5),
      secondary: Color(0xFF757575),
      accent: Color(0xFFff80ab),
    ),
  },

  // StartupVibrant - Startup & Innovation (Dynamic & Bold)
  YoColorScheme.startupVibrant: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF001220),
      background: Color(0xFFf8f9fa),
      primary: Color(0xFF6c63ff),
      secondary: Color(0xFFff6584),
      accent: Color(0xFF3ecf8e),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe6f1ff),
      background: Color(0xFF071220),
      primary: Color(0xFF8a84ff),
      secondary: Color(0xFFff84a4),
      accent: Color(0xFF5cf5aa),
    ),
  },

  // LuxuryMinimal - Luxury & Premium (Elegant & Sophisticated)
  YoColorScheme.luxuryMinimal: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF000000),
      background: Color(0xFFffffff),
      primary: Color(0xFF000000),
      secondary: Color(0xFF666666),
      accent: Color(0xFFEFBF04),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFffffff),
      background: Color(0xFF000000),
      primary: Color(0xFFffffff),
      secondary: Color(0xFFcccccc),
      accent: Color(0xFFEFBF04),
    ),
  },

  // HealthcarePro - Professional Healthcare (Cleanliness & Trust)
  YoColorScheme.healthcarePro: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1a365d),
      background: Color(0xFFf7fafc),
      primary: Color(0xFF3182ce),
      secondary: Color(0xFFe53e3e),
      accent: Color(0xFF38a169),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFebf8ff),
      background: Color(0xFF0d1520),
      primary: Color(0xFF63b3ed),
      secondary: Color(0xFFfc8181),
      accent: Color(0xFF68d391),
    ),
  },

  // FitnessEnergy - Fitness & Sports (Energy & Motivation)
  YoColorScheme.fitnessEnergy: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFFc53030),
      background: Color(0xFFfff5f5),
      primary: Color(0xFFe53e3e),
      secondary: Color(0xFFdd6b20),
      accent: Color(0xFF38a169),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfed7d7),
      background: Color(0xFF2a0f0f),
      primary: Color(0xFFfc8181),
      secondary: Color(0xFFf6ad55),
      accent: Color(0xFF68d391),
    ),
  },

  // NewsMagazine - News & Media (Credibility & Objectivity)
  YoColorScheme.newsMagazine: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1a202c),
      background: Color(0xFFf7fafc),
      primary: Color(0xFF2d3748),
      secondary: Color(0xFF4a5568),
      accent: Color(0xFFe53e3e),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf7fafc),
      background: Color(0xFF0d1018),
      primary: Color(0xFFcbd5e0),
      secondary: Color(0xFFa0aec0),
      accent: Color(0xFFfc8181),
    ),
  },

  // GamingNeon - Gaming & Esports (Excitement & Competitive)
  YoColorScheme.gamingNeon: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1a1a2e),
      background: Color(0xFF16213e),
      primary: Color(0xFF0f3460),
      secondary: Color(0xFFe94560),
      accent: Color(0xFF53bf9d),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFffffff),
      background: Color(0xFF0a0a14),
      primary: Color(0xFF533483),
      secondary: Color(0xFFff006e),
      accent: Color(0xFF00f5ff),
    ),
  },

  // CryptoModern - Cryptocurrency & Fintech (Innovation & Security)
  YoColorScheme.cryptoModern: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0f172a),
      background: Color(0xFFf8fafc),
      primary: Color(0xFFf59e0b),
      secondary: Color(0xFF6366f1),
      accent: Color(0xFF10b981),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf1f5f9),
      background: Color(0xFF0a0f1a),
      primary: Color(0xFFfbbf24),
      secondary: Color(0xFF818cf8),
      accent: Color(0xFF34d399),
    ),
  },

  // KidsLearning - Kids Education & Fun (Joyful & Safe)
  YoColorScheme.kidsLearning: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF3730a3),
      background: Color(0xFFfef3c7),
      primary: Color(0xFFf59e0b),
      secondary: Color(0xFFef4444),
      accent: Color(0xFF22c55e),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFddd6fe),
      background: Color(0xFF25205a),
      primary: Color(0xFFfbbf24),
      secondary: Color(0xFFf87171),
      accent: Color(0xFF4ade80),
    ),
  },

  // RealEstatePro - Property & Real Estate (Trust & Stability)
  YoColorScheme.realEstatePro: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1e293b),
      background: Color(0xFFf8fafc),
      primary: Color(0xFFdc2626),
      secondary: Color(0xFF2563eb),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf1f5f9),
      background: Color(0xFF0a0f17),
      primary: Color(0xFFef4444),
      secondary: Color(0xFF3b82f6),
      accent: Color(0xFF10b981),
    ),
  },

  // MusicVibes - Music & Streaming (Creativity & Expression)
  YoColorScheme.musicVibes: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF581c87),
      background: Color(0xFFfdf4ff),
      primary: Color(0xFFa855f7),
      secondary: Color(0xFFec4899),
      accent: Color(0xFF06b6d4),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf5d0fe),
      background: Color(0xFF2d0f44),
      primary: Color(0xFFc084fc),
      secondary: Color(0xFFf472b6),
      accent: Color(0xFF22d3ee),
    ),
  },

  // ArtGallery - Art & Museum (Creativity & Culture)
  YoColorScheme.artGallery: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF7c2d12),
      background: Color(0xFFfff7ed),
      primary: Color(0xFFea580c),
      secondary: Color(0xFFf97316),
      accent: Color(0xFF0891b2),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfed7aa),
      background: Color(0xFF3d1609),
      primary: Color(0xFFfb923c),
      secondary: Color(0xFFfdba74),
      accent: Color(0xFF22d3ee),
    ),
  },

  // CodingDark - Developer & Coding (Focus & Precision)
  YoColorScheme.codingDark: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF111827),
      background: Color(0xFFf9fafb),
      primary: Color(0xFF2563eb),
      secondary: Color(0xFF4b5563),
      accent: Color(0xFF10b981),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf3f4f6),
      background: Color(0xFF0d121f),
      primary: Color(0xFF3b82f6),
      secondary: Color(0xFF6b7280),
      accent: Color(0xFF34d399),
    ),
  },

  // OutdoorCalm - Outdoor & Gardening (Calm & Nature)
  YoColorScheme.outdoorCalm: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF14532d),
      background: Color(0xFFf0fdf4),
      primary: Color(0xFF16a34a),
      secondary: Color(0xFF84cc16),
      accent: Color(0xFFf59e0b),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFdcfce7),
      background: Color(0xFF0a2916),
      primary: Color(0xFF22c55e),
      secondary: Color(0xFFa3e635),
      accent: Color(0xFFfbbf24),
    ),
  },

  // FashionTrendy - Fashion & Style (Trendy & Stylish)
  YoColorScheme.fashionTrendy: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFFbe185d),
      background: Color(0xFFfdf2f8),
      primary: Color(0xFFec4899),
      secondary: Color(0xFFdb2777),
      accent: Color(0xFF8b5cf6),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfce7f3),
      background: Color(0xFF5f0c2f),
      primary: Color(0xFFf472b6),
      secondary: Color(0xFFec4899),
      accent: Color(0xFFa78bfa),
    ),
  },

  // ScienceLab - Science & Research (Precision & Objectivity)
  YoColorScheme.scienceLab: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0c4a6e),
      background: Color(0xFFf0f9ff),
      primary: Color(0xFF0284c7),
      secondary: Color(0xFF7c3aed),
      accent: Color(0xFFdc2626),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe0f2fe),
      background: Color(0xFF062537),
      primary: Color(0xFF38bdf8),
      secondary: Color(0xFFa78bfa),
      accent: Color(0xFFf87171),
    ),
  },

  // CommunityWarm - Community & Forum (Warm & Inclusive)
  YoColorScheme.communityWarm: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF92400e),
      background: Color(0xFFfffbeb),
      primary: Color(0xFFd97706),
      secondary: Color(0xFFb45309),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfef3c7),
      background: Color(0xFF492007),
      primary: Color(0xFFf59e0b),
      secondary: Color(0xFFd97706),
      accent: Color(0xFF10b981),
    ),
  },

  // 20 TAMBAHAN BARU - Skema Warna Baru dengan Tes Kontras WCAG

  // LegalJustice - Legal & Law Apps (Justice & Trust)
  YoColorScheme.legalJustice: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1e3a8a),
      background: Color(0xFFf8fafc),
      primary: Color(0xFF1e40af),
      secondary: Color(0xFF7c2d12),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFdbeafe),
      background: Color(0xFF0a0f1a),
      primary: Color(0xFF3b82f6),
      secondary: Color(0xFFea580c),
      accent: Color(0xFF10b981),
    ),
  },

  // AgricultureFresh - Agriculture & Farming (Fresh & Nature)
  YoColorScheme.agricultureFresh: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF14532d),
      background: Color(0xFFf0fdf4),
      primary: Color(0xFF16a34a),
      secondary: Color(0xFF65a30d),
      accent: Color(0xFFf59e0b),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFdcfce7),
      background: Color(0xFF0a1f0e),
      primary: Color(0xFF22c55e),
      secondary: Color(0xFF84cc16),
      accent: Color(0xFFfbbf24),
    ),
  },

  // ConstructionSolid - Construction & Building (Solid & Reliable)
  YoColorScheme.constructionSolid: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF7c2d12),
      background: Color(0xFFfff7ed),
      primary: Color(0xFFc2410c),
      secondary: Color(0xFFa16207),
      accent: Color(0xFF374151),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfed7aa),
      background: Color(0xFF2d1609),
      primary: Color(0xFFf97316),
      secondary: Color(0xFFca8a04),
      accent: Color(0xFF9ca3af),
    ),
  },

  // LogisticsSwift - Logistics & Delivery (Swift & Efficient)
  YoColorScheme.logisticsSwift: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0f172a),
      background: Color(0xFFf8fafc),
      primary: Color(0xFF0ea5e9),
      secondary: Color(0xFF6366f1),
      accent: Color(0xFFf59e0b),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe2e8f0),
      background: Color(0xFF0a0f17),
      primary: Color(0xFF38bdf8),
      secondary: Color(0xFF818cf8),
      accent: Color(0xFFfbbf24),
    ),
  },

  // DatingRomance - Dating & Relationships (Romantic & Warm)
  YoColorScheme.datingRomance: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFFbe185d),
      background: Color(0xFFfdf2f8),
      primary: Color(0xFFec4899),
      secondary: Color(0xFFdb2777),
      accent: Color(0xFFf59e0b),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfce7f3),
      background: Color(0xFF420d28),
      primary: Color(0xFFf472b6),
      secondary: Color(0xFFec4899),
      accent: Color(0xFFfbbf24),
    ),
  },

  // WeatherSky - Weather & Forecast (Sky & Weather)
  YoColorScheme.weatherSky: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0c4a6e),
      background: Color(0xFFf0f9ff),
      primary: Color(0xFF0284c7),
      secondary: Color(0xFF0891b2),
      accent: Color(0xFFf59e0b),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe0f2fe),
      background: Color(0xFF062537),
      primary: Color(0xFF38bdf8),
      secondary: Color(0xFF22d3ee),
      accent: Color(0xFFfbbf24),
    ),
  },

  // AviationSky - Aviation & Flight (Fly & Vast)
  YoColorScheme.aviationSky: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1e3a8a),
      background: Color(0xFFeff6ff),
      primary: Color(0xFF2563eb),
      secondary: Color(0xFF1d4ed8),
      accent: Color(0xFFdc2626),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFdbeafe),
      background: Color(0xFF0f1a45),
      primary: Color(0xFF3b82f6),
      secondary: Color(0xFF60a5fa),
      accent: Color(0xFFef4444),
    ),
  },

  // MarineOcean - Marine & Nautical (Sea & Depth)
  YoColorScheme.marineOcean: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0c4a6e),
      background: Color(0xFFf0f9ff),
      primary: Color(0xFF0369a1),
      secondary: Color(0xFF0e7490),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe0f2fe),
      background: Color(0xFF062537),
      primary: Color(0xFF0ea5e9),
      secondary: Color(0xFF0891b2),
      accent: Color(0xFF10b981),
    ),
  },

  // SpaceCosmic - Space & Astronomy (Cosmos & Mystery)
  YoColorScheme.spaceCosmic: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF581c87),
      background: Color(0xFFfaf5ff),
      primary: Color(0xFF7c3aed),
      secondary: Color(0xFFa855f7),
      accent: Color(0xFFf59e0b),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf3e8ff),
      background: Color(0xFF2d0f44),
      primary: Color(0xFFa855f7),
      secondary: Color(0xFFc084fc),
      accent: Color(0xFFfbbf24),
    ),
  },

  // DesertSand - Desert & Arid (Desert & Emptiness)
  YoColorScheme.desertSand: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF92400e),
      background: Color(0xFFfffbeb),
      primary: Color(0xFFd97706),
      secondary: Color(0xFFb45309),
      accent: Color(0xFFdc2626),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfef3c7),
      background: Color(0xFF492007),
      primary: Color(0xFFf59e0b),
      secondary: Color(0xFFd97706),
      accent: Color(0xFFef4444),
    ),
  },

  // ArcticFrost - Arctic & Cold (Cold & Clean)
  YoColorScheme.arcticFrost: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0c4a6e),
      background: Color(0xFFf0f9ff),
      primary: Color(0xFF0891b2),
      secondary: Color(0xFF0e7490),
      accent: Color(0xFF7c3aed),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe0f2fe),
      background: Color(0xFF062537),
      primary: Color(0xFF22d3ee),
      secondary: Color(0xFF0891b2),
      accent: Color(0xFFa855f7),
    ),
  },

  // VolcanicFire - Volcanic & Energy (Fire & Energy)
  YoColorScheme.volcanicFire: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF7c2d12),
      background: Color(0xFFfff7ed),
      primary: Color(0xFFdc2626),
      secondary: Color(0xFFea580c),
      accent: Color(0xFFca8a04),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfed7aa),
      background: Color(0xFF2d1609),
      primary: Color(0xFFef4444),
      secondary: Color(0xFFf97316),
      accent: Color(0xFFeab308),
    ),
  },

  // ForestWood - Forest & Trees (Wood & Nature)
  YoColorScheme.forestWood: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF14532d),
      background: Color(0xFFf0fdf4),
      primary: Color(0xFF15803d),
      secondary: Color(0xFF166534),
      accent: Color(0xFFd97706),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFdcfce7),
      background: Color(0xFF0a2916),
      primary: Color(0xFF16a34a),
      secondary: Color(0xFF15803d),
      accent: Color(0xFFf59e0b),
    ),
  },

  // MountainPeak - Mountain & Hiking (Peak & Achievement)
  YoColorScheme.mountainPeak: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1e293b),
      background: Color(0xFFf8fafc),
      primary: Color(0xFF475569),
      secondary: Color(0xFF64748b),
      accent: Color(0xFFf59e0b),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf1f5f9),
      background: Color(0xFF0a0f17),
      primary: Color(0xFF94a3b8),
      secondary: Color(0xFFcbd5e1),
      accent: Color(0xFFfbbf24),
    ),
  },

  // TropicalVibrant - Tropical & Exotic (Exotic & Cheerful)
  YoColorScheme.tropicalVibrant: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFFbe185d),
      background: Color(0xFFfdf4ff),
      primary: Color(0xFFec4899),
      secondary: Color(0xFFf59e0b),
      accent: Color(0xFF22c55e),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfce7f3),
      background: Color(0xFF420d28),
      primary: Color(0xFFf472b6),
      secondary: Color(0xFFfbbf24),
      accent: Color(0xFF4ade80),
    ),
  },

  // VintageRetro - Vintage & Retro (Classic & Nostalgia)
  YoColorScheme.vintageRetro: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF92400e),
      background: Color(0xFFfef3c7),
      primary: Color(0xFFd97706),
      secondary: Color(0xFF92400e),
      accent: Color(0xFFdc2626),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfef3c7),
      background: Color(0xFF492007),
      primary: Color(0xFFf59e0b),
      secondary: Color(0xFFd97706),
      accent: Color(0xFFef4444),
    ),
  },

  // FuturisticNeon - Futuristic & Sci-fi (Future & Technology)
  YoColorScheme.futuristicNeon: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0f172a),
      background: Color(0xFFf8fafc),
      primary: Color(0xFF06b6d4),
      secondary: Color(0xFF8b5cf6),
      accent: Color(0xFFec4899),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf1f5f9),
      background: Color(0xFF0a0f17),
      primary: Color(0xFF22d3ee),
      secondary: Color(0xFFa78bfa),
      accent: Color(0xFFf472b6),
    ),
  },

  // ElegantGold - Elegant & Luxury (Gold & Magnificent)
  YoColorScheme.elegantGold: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF92400e),
      background: Color(0xFFfef3c7),
      primary: Color(0xFFf59e0b),
      secondary: Color(0xFFd97706),
      accent: Color(0xFF7c2d12),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfef3c7),
      background: Color(0xFF492007),
      primary: Color(0xFFfbbf24),
      secondary: Color(0xFFf59e0b),
      accent: Color(0xFFf97316),
    ),
  },

  // MinimalistClean - Minimalist & Clean (Clean & Simple)
  YoColorScheme.minimalistClean: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1f2937),
      background: Color(0xFFf9fafb),
      primary: Color(0xFF374151),
      secondary: Color(0xFF6b7280),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf3f4f6),
      background: Color(0xFF0d121f),
      primary: Color(0xFF9ca3af),
      secondary: Color(0xFFd1d5db),
      accent: Color(0xFF10b981),
    ),
  },

  // UrbanStreet - Urban & Street (City & Style)
  YoColorScheme.urbanStreet: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0f172a),
      background: Color(0xFFf8fafc),
      primary: Color(0xFF1f2937),
      secondary: Color(0xFF374151),
      accent: Color(0xFFdc2626),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe2e8f0),
      background: Color(0xFF0a0f17),
      primary: Color(0xFF4b5563),
      secondary: Color(0xFF6b7280),
      accent: Color(0xFFef4444),
    ),
  },

  YoColorScheme.corporateBlue: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1A1D21),
      background: Color(0xFFF8FAFC),
      primary: Color(0xFF2563EB),
      secondary: Color(0xFF64748B),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF1F5F9),
      background: Color(0xFF0F1419),
      primary: Color(0xFF3B82F6),
      secondary: Color(0xFF94A3B8),
      accent: Color(0xFF10B981),
    ),
  },

  YoColorScheme.financeTrust: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1E293B),
      background: Color(0xFFFFFFFF),
      primary: Color(0xFF0369A1),
      secondary: Color(0xFF475569),
      accent: Color(0xFFDC2626),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF8FAFC),
      background: Color(0xFF0C1A2D),
      primary: Color(0xFF0EA5E9),
      secondary: Color(0xFF64748B),
      accent: Color(0xFFEF4444),
    ),
  },

  YoColorScheme.healthcareClean: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFF0FDF4),
      primary: Color(0xFF059669),
      secondary: Color(0xFF3B82F6),
      accent: Color(0xFFDC2626),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF052E16),
      primary: Color(0xFF10B981),
      secondary: Color(0xFF60A5FA),
      accent: Color(0xFFF87171),
    ),
  },

  YoColorScheme.educationVibrant: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1E293B),
      background: Color(0xFFFFFBEB),
      primary: Color(0xFFD97706),
      secondary: Color(0xFF7C3AED),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFEF3C7),
      background: Color(0xFF451A03),
      primary: Color(0xFFF59E0B),
      secondary: Color(0xFFA855F7),
      accent: Color(0xFF10B981),
    ),
  },

  YoColorScheme.productivityFocus: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF111827),
      background: Color(0xFFF9FAFB),
      primary: Color(0xFF7C3AED),
      secondary: Color(0xFF059669),
      accent: Color(0xFFDC2626),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF3F4F6),
      background: Color(0xFF1F1A2D),
      primary: Color(0xFF8B5CF6),
      secondary: Color(0xFF10B981),
      accent: Color(0xFFEF4444),
    ),
  },

  // TECHNOLOGY & DIGITAL (5 schemes)
  YoColorScheme.techModern: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0F172A),
      background: Color(0xFFF8FAFC),
      primary: Color(0xFF6366F1),
      secondary: Color(0xFF06B6D4),
      accent: Color(0xFFF59E0B),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF1F5F9),
      background: Color(0xFF0F1A2A),
      primary: Color(0xFF818CF8),
      secondary: Color(0xFF22D3EE),
      accent: Color(0xFFFBBF24),
    ),
  },

  YoColorScheme.developerDark: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF111827),
      background: Color(0xFFF9FAFB),
      primary: Color(0xFF2563EB),
      secondary: Color(0xFF6B7280),
      accent: Color(0xFF10B981),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF3F4F6),
      background: Color(0xFF0D121F),
      primary: Color(0xFF3B82F6),
      secondary: Color(0xFF9CA3AF),
      accent: Color(0xFF34D399),
    ),
  },

  YoColorScheme.startupEnergy: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1A0B2E),
      background: Color(0xFFFDF4FF),
      primary: Color(0xFF8B5CF6),
      secondary: Color(0xFFEC4899),
      accent: Color(0xFF06B6D4),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFAF5FF),
      background: Color(0xFF1A0B2E),
      primary: Color(0xFFA855F7),
      secondary: Color(0xFFF472B6),
      accent: Color(0xFF22D3EE),
    ),
  },

  YoColorScheme.cryptoBold: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFFFBEB),
      primary: Color(0xFFF59E0B),
      secondary: Color(0xFFEF4444),
      accent: Color(0xFF10B981),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFEF3C7),
      background: Color(0xFF451A03),
      primary: Color(0xFFFBBF24),
      secondary: Color(0xFFF87171),
      accent: Color(0xFF34D399),
    ),
  },

  YoColorScheme.aiFuturistic: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0F172A),
      background: Color(0xFFF0FDF4),
      primary: Color(0xFF06B6D4),
      secondary: Color(0xFF8B5CF6),
      accent: Color(0xFFEC4899),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF0FDFA),
      background: Color(0xFF042F2E),
      primary: Color(0xFF22D3EE),
      secondary: Color(0xFFA855F7),
      accent: Color(0xFFF472B6),
    ),
  },

  // SOCIAL & ENTERTAINMENT (5 schemes)
  YoColorScheme.socialWarm: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFDF2F8),
      primary: Color(0xFFEC4899),
      secondary: Color(0xFF8B5CF6),
      accent: Color(0xFF06B6D4),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFDF4FF),
      background: Color(0xFF451A03),
      primary: Color(0xFFF472B6),
      secondary: Color(0xFFA855F7),
      accent: Color(0xFF22D3EE),
    ),
  },

  YoColorScheme.datingRomantic: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF701A75),
      background: Color(0xFFFDF4FF),
      primary: Color(0xFFDB2777),
      secondary: Color(0xFFC026D3),
      accent: Color(0xFFF59E0B),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFAE8FF),
      background: Color(0xFF4A044E),
      primary: Color(0xFFF472B6),
      secondary: Color(0xFFE879F9),
      accent: Color(0xFFFBBF24),
    ),
  },

  YoColorScheme.musicDynamic: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF581C87),
      background: Color(0xFFFDF4FF),
      primary: Color(0xFFA855F7),
      secondary: Color(0xFFEC4899),
      accent: Color(0xFF06B6D4),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFAF5FF),
      background: Color(0xFF3B0764),
      primary: Color(0xFFC084FC),
      secondary: Color(0xFFF472B6),
      accent: Color(0xFF22D3EE),
    ),
  },

  YoColorScheme.gamingVibrant: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1A0B2E),
      background: Color(0xFFF8FAFC),
      primary: Color(0xFFDC2626),
      secondary: Color(0xFF7C3AED),
      accent: Color(0xFF06B6D4),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFECACA),
      background: Color(0xFF450A0A),
      primary: Color(0xFFEF4444),
      secondary: Color(0xFF8B5CF6),
      accent: Color(0xFF22D3EE),
    ),
  },

  YoColorScheme.streamingDark: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFF9FAFB),
      primary: Color(0xFFDC2626),
      secondary: Color(0xFF6B7280),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF3F4F6),
      background: Color(0xFF000000),
      primary: Color(0xFFEF4444),
      secondary: Color(0xFF9CA3AF),
      accent: Color(0xFF10B981),
    ),
  },

  // LIFESTYLE & DAILY USE (5 schemes)
  YoColorScheme.fitnessMotivation: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFF0FDF4),
      primary: Color(0xFFDC2626),
      secondary: Color(0xFFD97706),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF052E16),
      primary: Color(0xFFEF4444),
      secondary: Color(0xFFF59E0B),
      accent: Color(0xFF10B981),
    ),
  },

  YoColorScheme.foodAppetizing: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF78350F),
      background: Color(0xFFFFFBEB),
      primary: Color(0xFFD97706),
      secondary: Color(0xFFDC2626),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFEF3C7),
      background: Color(0xFF451A03),
      primary: Color(0xFFF59E0B),
      secondary: Color(0xFFEF4444),
      accent: Color(0xFF10B981),
    ),
  },

  YoColorScheme.travelAdventure: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0F4C75),
      background: Color(0xFFF0F9FF),
      primary: Color(0xFF0369A1),
      secondary: Color(0xFF059669),
      accent: Color(0xFFD97706),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFE0F2FE),
      background: Color(0xFF0C4A6E),
      primary: Color(0xFF0EA5E9),
      secondary: Color(0xFF10B981),
      accent: Color(0xFFF59E0B),
    ),
  },

  YoColorScheme.shoppingRetail: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFFFFFF),
      primary: Color(0xFF2563EB),
      secondary: Color(0xFFDC2626),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF8FAFC),
      background: Color(0xFF111827),
      primary: Color(0xFF3B82F6),
      secondary: Color(0xFFEF4444),
      accent: Color(0xFF10B981),
    ),
  },

  YoColorScheme.weatherCalm: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0C4A6E),
      background: Color(0xFFF0F9FF),
      primary: Color(0xFF0284C7),
      secondary: Color(0xFF0369A1),
      accent: Color(0xFFD97706),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFE0F2FE),
      background: Color(0xFF0C4A6E),
      primary: Color(0xFF0EA5E9),
      secondary: Color(0xFF38BDF8),
      accent: Color(0xFFF59E0B),
    ),
  },

  // CREATIVE & DESIGN (5 schemes)
  YoColorScheme.creativeArtistic: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF581C87),
      background: Color(0xFFFDF4FF),
      primary: Color(0xFFA855F7),
      secondary: Color(0xFFEC4899),
      accent: Color(0xFF06B6D4),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFAF5FF),
      background: Color(0xFF3B0764),
      primary: Color(0xFFC084FC),
      secondary: Color(0xFFF472B6),
      accent: Color(0xFF22D3EE),
    ),
  },

  YoColorScheme.photographyElegant: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFFFFFF),
      primary: Color(0xFF000000),
      secondary: Color(0xFF6B7280),
      accent: Color(0xFFDC2626),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF000000),
      primary: Color(0xFFFFFFFF),
      secondary: Color(0xFF9CA3AF),
      accent: Color(0xFFEF4444),
    ),
  },

  YoColorScheme.writingFocus: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFEFCE8),
      primary: Color(0xFFCA8A04),
      secondary: Color(0xFF57534E),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFEFCE8),
      background: Color(0xFF292524),
      primary: Color(0xFFEAB308),
      secondary: Color(0xFFA8A29E),
      accent: Color(0xFF10B981),
    ),
  },

  YoColorScheme.artGallery2: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF78350F),
      background: Color(0xFFFFFBEB),
      primary: Color(0xFFD97706),
      secondary: Color(0xFF57534E),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFEF3C7),
      background: Color(0xFF292524),
      primary: Color(0xFFF59E0B),
      secondary: Color(0xFFA8A29E),
      accent: Color(0xFF10B981),
    ),
  },

  YoColorScheme.fashionTrendy2: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF701A75),
      background: Color(0xFFFDF4FF),
      primary: Color(0xFFC026D3),
      secondary: Color(0xFFDB2777),
      accent: Color(0xFFF59E0B),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFAE8FF),
      background: Color(0xFF4A044E),
      primary: Color(0xFFE879F9),
      secondary: Color(0xFFF472B6),
      accent: Color(0xFFFBBF24),
    ),
  },

  // SPECIALIZED INDUSTRIES (5 schemes)
  YoColorScheme.realEstateLuxury: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFEFCE8),
      primary: Color(0xFFCA8A04),
      secondary: Color(0xFF57534E),
      accent: Color(0xFF0369A1),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFEFCE8),
      background: Color(0xFF292524),
      primary: Color(0xFFEAB308),
      secondary: Color(0xFFA8A29E),
      accent: Color(0xFF0EA5E9),
    ),
  },

  YoColorScheme.automotivePower: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFF8FAFC),
      primary: Color(0xFFDC2626),
      secondary: Color(0xFF6B7280),
      accent: Color(0xFFF59E0B),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF111827),
      primary: Color(0xFFEF4444),
      secondary: Color(0xFF9CA3AF),
      accent: Color(0xFFFBBF24),
    ),
  },

  YoColorScheme.aviationSky2: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0C4A6E),
      background: Color(0xFFF0F9FF),
      primary: Color(0xFF0369A1),
      secondary: Color(0xFF0284C7),
      accent: Color(0xFFD97706),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFE0F2FE),
      background: Color(0xFF0C4A6E),
      primary: Color(0xFF0EA5E9),
      secondary: Color(0xFF38BDF8),
      accent: Color(0xFFF59E0B),
    ),
  },

  YoColorScheme.marineDeep: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0F4C75),
      background: Color(0xFFF0FDFA),
      primary: Color(0xFF0D9488),
      secondary: Color(0xFF0F766E),
      accent: Color(0xFFD97706),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFCCFBF1),
      background: Color(0xFF134E4A),
      primary: Color(0xFF2DD4BF),
      secondary: Color(0xFF14B8A6),
      accent: Color(0xFFF59E0B),
    ),
  },

  YoColorScheme.spaceCosmic2: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1E1B4B),
      background: Color(0xFFF8FAFC),
      primary: Color(0xFF4F46E5),
      secondary: Color(0xFF7C3AED),
      accent: Color(0xFF06B6D4),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFE0E7FF),
      background: Color(0xFF312E81),
      primary: Color(0xFF6366F1),
      secondary: Color(0xFF8B5CF6),
      accent: Color(0xFF22D3EE),
    ),
  },

  // COMMUNITY & SERVICES (5 schemes)
  YoColorScheme.communityFriendly: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFF0FDF4),
      primary: Color(0xFF059669),
      secondary: Color(0xFFD97706),
      accent: Color(0xFF0369A1),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF052E16),
      primary: Color(0xFF10B981),
      secondary: Color(0xFFF59E0B),
      accent: Color(0xFF0EA5E9),
    ),
  },

  YoColorScheme.newsProfessional: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFFFFFF),
      primary: Color(0xFF000000),
      secondary: Color(0xFF6B7280),
      accent: Color(0xFFDC2626),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF111827),
      primary: Color(0xFFFFFFFF),
      secondary: Color(0xFF9CA3AF),
      accent: Color(0xFFEF4444),
    ),
  },

  YoColorScheme.eventsCelebration: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF701A75),
      background: Color(0xFFFDF4FF),
      primary: Color(0xFFC026D3),
      secondary: Color(0xFFDB2777),
      accent: Color(0xFFF59E0B),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFAE8FF),
      background: Color(0xFF4A044E),
      primary: Color(0xFFE879F9),
      secondary: Color(0xFFF472B6),
      accent: Color(0xFFFBBF24),
    ),
  },

  YoColorScheme.bookingEfficient: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFF8FAFC),
      primary: Color(0xFF059669),
      secondary: Color(0xFF0369A1),
      accent: Color(0xFFD97706),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF052E16),
      primary: Color(0xFF10B981),
      secondary: Color(0xFF0EA5E9),
      accent: Color(0xFFF59E0B),
    ),
  },

  YoColorScheme.deliverySwift: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFFFBEB),
      primary: Color(0xFFD97706),
      secondary: Color(0xFFDC2626),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFEF3C7),
      background: Color(0xFF451A03),
      primary: Color(0xFFF59E0B),
      secondary: Color(0xFFEF4444),
      accent: Color(0xFF10B981),
    ),
  },

  // NATURE & ENVIRONMENT (5 schemes)
  YoColorScheme.natureFresh: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF14532D),
      background: Color(0xFFF0FDF4),
      primary: Color(0xFF059669),
      secondary: Color(0xFF65A30D),
      accent: Color(0xFFD97706),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF052E16),
      primary: Color(0xFF10B981),
      secondary: Color(0xFF84CC16),
      accent: Color(0xFFF59E0B),
    ),
  },

  YoColorScheme.ecoSustainable: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF064E3B),
      background: Color(0xFFF0FDF4),
      primary: Color(0xFF047857),
      secondary: Color(0xFF059669),
      accent: Color(0xFFD97706),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFECFDF5),
      background: Color(0xFF022C22),
      primary: Color(0xFF10B981),
      secondary: Color(0xFF34D399),
      accent: Color(0xFFF59E0B),
    ),
  },

  YoColorScheme.gardenCalm: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF365314),
      background: Color(0xFFF7FEE7),
      primary: Color(0xFF65A30D),
      secondary: Color(0xFF3F6212),
      accent: Color(0xFFD97706),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF7FEE7),
      background: Color(0xFF1A2E05),
      primary: Color(0xFF84CC16),
      secondary: Color(0xFF4D7C0F),
      accent: Color(0xFFF59E0B),
    ),
  },

  YoColorScheme.animalWarm: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF78350F),
      background: Color(0xFFFFFBEB),
      primary: Color(0xFFD97706),
      secondary: Color(0xFF92400E),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFEF3C7),
      background: Color(0xFF451A03),
      primary: Color(0xFFF59E0B),
      secondary: Color(0xFFB45309),
      accent: Color(0xFF10B981),
    ),
  },

  YoColorScheme.oceanSerene: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0C4A6E),
      background: Color(0xFFF0F9FF),
      primary: Color(0xFF0369A1),
      secondary: Color(0xFF0D9488),
      accent: Color(0xFFD97706),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFE0F2FE),
      background: Color(0xFF0C4A6E),
      primary: Color(0xFF0EA5E9),
      secondary: Color(0xFF14B8A6),
      accent: Color(0xFFF59E0B),
    ),
  },

  // LUXURY & PREMIUM (5 schemes)
  YoColorScheme.luxuryGold: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF78350F),
      background: Color(0xFFFFFBEB),
      primary: Color(0xFFCA8A04),
      secondary: Color(0xFFA16207),
      accent: Color(0xFF57534E),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFEF3C7),
      background: Color(0xFF292524),
      primary: Color(0xFFEAB308),
      secondary: Color(0xFFCA8A04),
      accent: Color(0xFFA8A29E),
    ),
  },

  YoColorScheme.premiumElegant: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFFFFFF),
      primary: Color(0xFF000000),
      secondary: Color(0xFF6B7280),
      accent: Color(0xFFCA8A04),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF000000),
      primary: Color(0xFFFFFFFF),
      secondary: Color(0xFF9CA3AF),
      accent: Color(0xFFEAB308),
    ),
  },

  YoColorScheme.minimalClean: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFFFFFF),
      primary: Color(0xFF6B7280),
      secondary: Color(0xFF374151),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF111827),
      primary: Color(0xFF9CA3AF),
      secondary: Color(0xFF4B5563),
      accent: Color(0xFF10B981),
    ),
  },

  YoColorScheme.modernSophisticated: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFF8FAFC),
      primary: Color(0xFF4F46E5),
      secondary: Color(0xFF6B7280),
      accent: Color(0xFFEC4899),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF1F5F9),
      background: Color(0xFF0F172A),
      primary: Color(0xFF6366F1),
      secondary: Color(0xFF94A3B8),
      accent: Color(0xFFF472B6),
    ),
  },

  YoColorScheme.classicTimeless: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFEFCE8),
      primary: Color(0xFF57534E),
      secondary: Color(0xFF78716C),
      accent: Color(0xFFCA8A04),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFEFCE8),
      background: Color(0xFF292524),
      primary: Color(0xFFA8A29E),
      secondary: Color(0xFFD6D3D1),
      accent: Color(0xFFEAB308),
    ),
  },

  // SPECIAL USE CASES (5 schemes)
  YoColorScheme.kidsPlayful: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF701A75),
      background: Color(0xFFFDF4FF),
      primary: Color(0xFFEC4899),
      secondary: Color(0xFF8B5CF6),
      accent: Color(0xFF06B6D4),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFAF5FF),
      background: Color(0xFF4A044E),
      primary: Color(0xFFF472B6),
      secondary: Color(0xFFA855F7),
      accent: Color(0xFF22D3EE),
    ),
  },

  YoColorScheme.learningInteractive: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1E293B),
      background: Color(0xFFFFFBEB),
      primary: Color(0xFFD97706),
      secondary: Color(0xFF7C3AED),
      accent: Color(0xFF06B6D4),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFEF3C7),
      background: Color(0xFF451A03),
      primary: Color(0xFFF59E0B),
      secondary: Color(0xFF8B5CF6),
      accent: Color(0xFF22D3EE),
    ),
  },

  YoColorScheme.meditationCalm: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0F4C75),
      background: Color(0xFFF0FDFA),
      primary: Color(0xFF0D9488),
      secondary: Color(0xFF0369A1),
      accent: Color(0xFF8B5CF6),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFCCFBF1),
      background: Color(0xFF134E4A),
      primary: Color(0xFF2DD4BF),
      secondary: Color(0xFF0EA5E9),
      accent: Color(0xFFA855F7),
    ),
  },

  YoColorScheme.financeBudget: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFF8FAFC),
      primary: Color(0xFF059669),
      secondary: Color(0xFFDC2626),
      accent: Color(0xFFD97706),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF052E16),
      primary: Color(0xFF10B981),
      secondary: Color(0xFFEF4444),
      accent: Color(0xFFF59E0B),
    ),
  },

  YoColorScheme.securityTrust: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFF8FAFC),
      primary: Color(0xFF0369A1),
      secondary: Color(0xFF059669),
      accent: Color(0xFFDC2626),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF0C1A2D),
      primary: Color(0xFF0EA5E9),
      secondary: Color(0xFF10B981),
      accent: Color(0xFFEF4444),
    ),
  },

  // ADDITIONAL CATEGORIES (5 schemes)
  YoColorScheme.sportsEnergy: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFEF2F2),
      primary: Color(0xFFDC2626),
      secondary: Color(0xFFD97706),
      accent: Color(0xFF059669),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFEF2F2),
      background: Color(0xFF450A0A),
      primary: Color(0xFFEF4444),
      secondary: Color(0xFFF59E0B),
      accent: Color(0xFF10B981),
    ),
  },

  YoColorScheme.fashionLuxury: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFDF4FF),
      primary: Color(0xFFC026D3),
      secondary: Color(0xFFDB2777),
      accent: Color(0xFFCA8A04),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFFAE8FF),
      background: Color(0xFF4A044E),
      primary: Color(0xFFE879F9),
      secondary: Color(0xFFF472B6),
      accent: Color(0xFFEAB308),
    ),
  },

  YoColorScheme.techSupport: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFF8FAFC),
      primary: Color(0xFF2563EB),
      secondary: Color(0xFF059669),
      accent: Color(0xFFD97706),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF0D121F),
      primary: Color(0xFF3B82F6),
      secondary: Color(0xFF10B981),
      accent: Color(0xFFF59E0B),
    ),
  },

  YoColorScheme.analyticsData: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFF8FAFC),
      primary: Color(0xFF7C3AED),
      secondary: Color(0xFF06B6D4),
      accent: Color(0xFFEC4899),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF1F1A2D),
      primary: Color(0xFF8B5CF6),
      secondary: Color(0xFF22D3EE),
      accent: Color(0xFFF472B6),
    ),
  },

  YoColorScheme.governmentOfficial: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1F2937),
      background: Color(0xFFFFFFFF),
      primary: Color(0xFF0369A1),
      secondary: Color(0xFF57534E),
      accent: Color(0xFFDC2626),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFF9FAFB),
      background: Color(0xFF0C1A2D),
      primary: Color(0xFF0EA5E9),
      secondary: Color(0xFFA8A29E),
      accent: Color(0xFFEF4444),
    ),
  },
};
