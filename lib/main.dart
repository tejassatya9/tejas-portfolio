import 'package:flutter/material.dart';

void main() {
  runApp(const TejasPortfolio());
}

class TejasPortfolio extends StatelessWidget {
  const TejasPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tejas Satyanarayana | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF0B1020),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7C5CFC),
          brightness: Brightness.dark,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/projects': (context) => const ProjectsScreen(),
        '/research': (context) => const ResearchScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<String> skills = const [
    'Python',
    'Java',
    'C/C++',
    'SQL',
    'Git & GitHub',
    'Docker',
    'FastAPI',
    'REST APIs',
    'PostgreSQL',
    'Deep Learning',
    'CNN',
    'LSTM',
    'Transformers',
    'Computer Vision',
    'OpenCV',
    'Speech & Audio AI',
    'NLP',
    'LLMs',
    'RAG',
    'LangChain',
    'LangGraph',
    'MCP',
    'Multi-Agent Systems',
    'Sentiment Analysis',
    'Explainable AI',
    'Anomaly Detection',
    'Qiskit',
    'OpenQASM 3.0',
    'Quantum Computing',
    'Post-Quantum Cryptography',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1050),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _TopBar(),
                  const SizedBox(height: 70),

                  Center(
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF7C5CFC),
                            Color(0xFF00C2FF),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF7C5CFC).withOpacity(0.25),
                            blurRadius: 40,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 58,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(height: 28),

                  const Center(
                    child: Text(
                      'TEJAS SATYANARAYANA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),

                  const Center(
                    child: Text(
                      'AI/ML Developer • Researcher • Builder',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF9CA7C2),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 750),
                      child: Text(
                        'I build intelligent systems at the intersection of '
                        'Artificial Intelligence, Machine Learning, Computer '
                        'Vision, Speech & Audio AI, Agentic Systems, and '
                        'Quantum Computing. My work focuses on turning complex '
                        'research ideas into practical and impactful systems.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.7,
                          color: Color(0xFFC7CFDF),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  Center(
                    child: Wrap(
                      spacing: 14,
                      runSpacing: 14,
                      alignment: WrapAlignment.center,
                      children: [
                        _NavButton(
                          label: 'View Projects',
                          icon: Icons.code_rounded,
                          onPressed: () {
                            Navigator.pushNamed(context, '/projects');
                          },
                        ),
                        _NavButton(
                          label: 'Research',
                          icon: Icons.science_outlined,
                          outlined: true,
                          onPressed: () {
                            Navigator.pushNamed(context, '/research');
                          },
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 90),

                  const _SectionTitle(
                    title: 'Technical Skills',
                    subtitle:
                        'Technologies and areas I work with across AI, software, research, and quantum computing.',
                  ),

                  const SizedBox(height: 30),

                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: skills
                        .map((skill) => _SkillChip(label: skill))
                        .toList(),
                  ),

                  const SizedBox(height: 90),

                  const _SectionTitle(
                    title: 'Areas of Interest',
                    subtitle:
                        'Exploring intelligent systems across multiple domains.',
                  ),

                  const SizedBox(height: 30),

                  const Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      _InterestCard(
                        icon: Icons.psychology_alt_outlined,
                        title: 'Agentic AI',
                        description:
                            'Autonomous and multi-agent systems for solving complex workflows.',
                      ),
                      _InterestCard(
                        icon: Icons.visibility_outlined,
                        title: 'Computer Vision',
                        description:
                            'Extracting meaningful information from images and video.',
                      ),
                      _InterestCard(
                        icon: Icons.graphic_eq,
                        title: 'Speech & Audio AI',
                        description:
                            'Emotion, speech, audio understanding, and digital humans.',
                      ),
                      _InterestCard(
                        icon: Icons.science_outlined,
                        title: 'AI Research',
                        description:
                            'Generalization, explainability, representation learning, and causality.',
                      ),
                      _InterestCard(
                        icon: Icons.hub_outlined,
                        title: 'Quantum Computing',
                        description:
                            'Quantum algorithms, simulation, and post-quantum systems.',
                      ),
                    ],
                  ),

                  const SizedBox(height: 70),

                  const Center(
                    child: Text(
                      'Built with curiosity. Driven by research.',
                      style: TextStyle(
                        color: Color(0xFF6F7890),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  final List<Project> projects = const [
    Project(
      number: '01',
      title: 'Talking Heads — Voice-Driven 3D Digital Human',
      description:
          'A dynamic, voice-driven 3D digital human capable of generating '
          'realistic facial expressions and precise lip-syncing directly from '
          'raw audio. The system interprets speech and emotional cues to '
          'synthesize natural, lifelike facial movements in real time.',
      tags: [
        'Speech AI',
        'Audio Processing',
        '3D Digital Humans',
        'Lip Sync',
        'Facial Animation',
      ],
    ),
    Project(
      number: '02',
      title: 'Agentic Workflow Configuration System',
      description:
          'Built an agentic AI system using LangGraph to automate the '
          'interpretation and configuration of client workflow flowcharts. '
          'The system analyzes natural-language requirements to identify '
          'events, possible next events, routing logic, access permissions, '
          'and workflow relationships.',
      tags: [
        'LangGraph',
        'Agentic AI',
        'LLMs',
        'MCP',
        'Workflow Automation',
      ],
    ),
    Project(
      number: '03',
      title: 'Quantum Ballot — Post-Quantum Secure Blockchain Voting',
      description:
          'Developed a post-quantum secure blockchain-based voting system '
          'designed to ensure secure, transparent, and tamper-resistant '
          'digital elections. The platform combines post-quantum cryptography '
          'with blockchain technology and AI-based anomaly detection.',
      tags: [
        'Blockchain',
        'Post-Quantum Cryptography',
        'Anomaly Detection',
        'AI Security',
      ],
    ),
    Project(
      number: '04',
      title: 'Customer Call Intelligence & Churn Analysis',
      description:
          'Implemented a pilot system to analyze recorded customer-agent calls '
          'and extract insights into customer satisfaction and emotional '
          'sentiment. The system also evaluates adoption likelihood and '
          'identifies potential churn indicators from conversational patterns.',
      tags: [
        'Speech Analytics',
        'Sentiment Analysis',
        'Emotion Recognition',
        'Churn Prediction',
      ],
    ),
    Project(
      number: '05',
      title: 'SemVid — Semantic Video Intelligence Pipeline',
      description:
          'Developed an AI-powered semantic video-to-text pipeline that '
          'extracts meaningful information from video content using intelligent '
          'frame filtering based on metrics such as edge density and optical '
          'flow. Integrated histogram and blob analysis, blob tracking, '
          'object tracking, and temporal attention.',
      tags: [
        'Computer Vision',
        'OpenCV',
        'Optical Flow',
        'Object Tracking',
        'Temporal Attention',
      ],
    ),
    Project(
      number: '06',
      title: 'AnantaQ — Interactive Quantum Circuit Simulator',
      description:
          'Developed an interactive quantum circuit simulator featuring 30+ '
          'quantum gates and a drag-and-drop interface for building and '
          'visualizing quantum circuits. Includes presets for Shor’s, Grover’s, '
          'Simon’s, Bernstein–Vazirani, and Deutsch–Jozsa algorithms.',
      tags: [
        'Qiskit',
        'OpenQASM 3.0',
        'Quantum Computing',
        'Quantum Algorithms',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1050),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _TopBar(),
                  const SizedBox(height: 65),

                  const _SectionTitle(
                    title: 'Projects',
                    subtitle:
                        'A selection of systems spanning AI, agentic workflows, computer vision, speech intelligence, cybersecurity, and quantum computing.',
                  ),

                  const SizedBox(height: 40),

                  ...projects.map(
                    (project) => Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: _ProjectCard(project: project),
                    ),
                  ),

                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ResearchScreen extends StatelessWidget {
  const ResearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1050),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _TopBar(),
                  const SizedBox(height: 65),

                  const _SectionTitle(
                    title: 'Research',
                    subtitle:
                        'Exploring the limits of generalization and explainability in AI systems.',
                  ),

                  const SizedBox(height: 45),

                  const Text(
                    'RESEARCH PROJECTS',
                    style: TextStyle(
                      fontSize: 13,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7C5CFC),
                    ),
                  ),

                  const SizedBox(height: 18),

                  const _ResearchCard(
                    title:
                        'Cross-Era Generalization in Bollywood Music Emotion Recognition',
                    status: 'Research Project',
                    description:
                        'Co-authored a research paper investigating cross-era '
                        'music emotion recognition in Bollywood music using deep '
                        'learning models including CNN and CNN-LSTM, alongside '
                        'handcrafted features with GMM and Random Forest. '
                        'Developed a 3×3 cross-era benchmarking framework that '
                        'trained and tested models across different musical eras, '
                        'revealing significant production and stylistic shifts '
                        'that affect emotion recognition and model generalization.',
                    tags: [
                      'Music Emotion Recognition',
                      'CNN',
                      'CNN-LSTM',
                      'GMM',
                      'Random Forest',
                      'Deep Learning',
                      'Cross-Domain Generalization',
                    ],
                  ),

                  const SizedBox(height: 65),

                  const Text(
                    'ONGOING RESEARCH',
                    style: TextStyle(
                      fontSize: 13,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00C2FF),
                    ),
                  ),

                  const SizedBox(height: 18),

                  const _ResearchCard(
                    title: 'Causal Explainability for Music Emotion Recognition',
                    status: 'Ongoing',
                    ongoing: true,
                    description:
                        'Conducting research on moving beyond correlational '
                        'explainability in Music Emotion Recognition by identifying '
                        'representation directions that are causally responsible '
                        'for emotion predictions. The work adapts weight-decomposition '
                        'and SVD-based methods to MERT and PupuJEPA embeddings, '
                        'validating candidate emotion directions through ablation, '
                        'steering, and minimal-pair testing. A larger-scope extension '
                        'explores cross-layer emotion channels within transformer architectures.',
                    tags: [
                      'Causal Explainability',
                      'Music Emotion Recognition',
                      'MERT',
                      'PupuJEPA',
                      'SVD',
                      'Representation Learning',
                      'Transformers',
                      'Interpretability',
                    ],
                  ),

                  const SizedBox(height: 70),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/',
              (route) => false,
            );
          },
          child: const Text(
            'TS.',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color(0xFF7C5CFC),
            ),
          ),
        ),
        const Spacer(),
        Wrap(
          spacing: 6,
          children: [
            _TopNav(
              label: 'Home',
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/',
                  (route) => false,
                );
              },
            ),
            _TopNav(
              label: 'Projects',
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/projects',
                  (route) => false,
                );
              },
            ),
            _TopNav(
              label: 'Research',
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/research',
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}

class _TopNav extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _TopNav({
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xFFB8C1D6),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool outlined;
  final VoidCallback onPressed;

  const _NavButton({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.outlined = false,
  });

  @override
  Widget build(BuildContext context) {
    if (outlined) {
      return OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(label),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 17,
          ),
          foregroundColor: Colors.white,
          side: const BorderSide(color: Color(0xFF34405F)),
        ),
      );
    }

    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 17,
        ),
        backgroundColor: const Color(0xFF7C5CFC),
        foregroundColor: Colors.white,
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const _SectionTitle({
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 15,
            height: 1.6,
            color: Color(0xFF9CA7C2),
          ),
        ),
      ],
    );
  }
}

class _SkillChip extends StatelessWidget {
  final String label;

  const _SkillChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 9,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF141D35),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFF293555),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 13,
          color: Color(0xFFC7CFDF),
        ),
      ),
    );
  }
}

class _InterestCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _InterestCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: const Color(0xFF121A30),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFF263150),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: const Color(0xFF7C5CFC),
            size: 30,
          ),
          const SizedBox(height: 18),
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              color: Color(0xFF9CA7C2),
              height: 1.5,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}

class Project {
  final String number;
  final String title;
  final String description;
  final List<String> tags;

  const Project({
    required this.number,
    required this.title,
    required this.description,
    required this.tags,
  });
}

class _ProjectCard extends StatelessWidget {
  final Project project;

  const _ProjectCard({
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: const Color(0xFF121A30),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFF263150),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.number,
            style: const TextStyle(
              color: Color(0xFF7C5CFC),
              fontWeight: FontWeight.bold,
              fontSize: 14,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            project.title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              height: 1.25,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            project.description,
            style: const TextStyle(
              fontSize: 15,
              height: 1.65,
              color: Color(0xFFC7CFDF),
            ),
          ),
          const SizedBox(height: 22),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: project.tags
                .map((tag) => _SkillChip(label: tag))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _ResearchCard extends StatelessWidget {
  final String title;
  final String status;
  final String description;
  final List<String> tags;
  final bool ongoing;

  const _ResearchCard({
    required this.title,
    required this.status,
    required this.description,
    required this.tags,
    this.ongoing = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: const Color(0xFF121A30),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: ongoing
              ? const Color(0xFF00C2FF).withOpacity(0.5)
              : const Color(0xFF7C5CFC).withOpacity(0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: ongoing
                  ? const Color(0xFF00C2FF).withOpacity(0.12)
                  : const Color(0xFF7C5CFC).withOpacity(0.12),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              status,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: ongoing
                    ? const Color(0xFF00C2FF)
                    : const Color(0xFF9E8BFF),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              height: 1.25,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(
              fontSize: 15,
              height: 1.7,
              color: Color(0xFFC7CFDF),
            ),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: tags
                .map((tag) => _SkillChip(label: tag))
                .toList(),
          ),
        ],
      ),
    );
  }
}
