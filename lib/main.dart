import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tejas Satyanarayana | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF8F9FD),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF4354B4),
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF4354B4),
            foregroundColor: Colors.white,
            elevation: 0,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 12,
            ),
            textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/projects': (context) => const ProjectsScreen(),
      },
    );
  }
}

// ---------------- HOME SCREEN ----------------

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 54,
                backgroundColor: Color(0xFFE5DDFE),
                child: Icon(
                  Icons.person,
                  size: 54,
                  color: Color(0xFF4354B4),
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                'TEJAS SATYANARAYANA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2B3A8F),
                  letterSpacing: 0.8,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Artificial Intelligence • Machine Learning • Computer Science',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 28),

              SizedBox(
                width: 140,
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/about'),
                  child: const Text('About Me'),
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: 140,
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/projects'),
                  child: const Text('Projects'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------- ABOUT ME SCREEN ----------------

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 32.0,
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
                vertical: 36,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFEDF0FA),
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.person,
                    size: 64,
                    color: Color(0xFF4354B4),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Hello! I'm Tejas Satyanarayana. "
                    "I am interested in Artificial Intelligence, Machine Learning, "
                    "Computer Vision, Speech and Audio AI, Agentic AI Systems, "
                    "and Quantum Computing. "
                    "I enjoy building intelligent systems and exploring how "
                    "research ideas can be transformed into practical, "
                    "real-world applications.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 28),

                  const Text(
                    'Skills',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2B3A8F),
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'Python • Dart • Flutter • C++ • SQL\n'
                    'Machine Learning • Deep Learning • Computer Vision\n'
                    'Speech & Audio AI • Generative AI • LLMs\n'
                    'LangGraph • Agentic AI • MCP • FastAPI\n'
                    'PyTorch • TensorFlow • OpenCV\n'
                    'Qiskit • OpenQASM • Quantum Computing\n'
                    'Git • GitHub • PostgreSQL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.7,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 28),

                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Back to Home'),
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

// ---------------- PROJECTS SCREEN ----------------

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 32.0,
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ProjectCard(
                  title: 'Talking Heads — Custom Pipeline',
                  description:
                      'Developed a dynamic, voice-driven 3D digital human '
                      'capable of generating realistic facial expressions '
                      'and precise lip-syncing from raw audio. The system '
                      'interprets speech and emotional cues to synthesize '
                      'natural facial movements in real time, enabling '
                      'interactive digital assistants, gaming applications, '
                      'and automated media generation.',
                ),

                const SizedBox(height: 16),

                const ProjectCard(
                  title:
                      'Customer Call Intelligence & Churn Analysis',
                  description:
                      'Implemented a system to analyze recorded customer-agent '
                      'calls and extract insights into customer satisfaction '
                      'and emotional sentiment. The system evaluated customer '
                      'interest in specific schemes and identified potential '
                      'churn indicators from conversational patterns, turning '
                      'unstructured call recordings into actionable insights '
                      'for retention and business decision-making.',
                ),

                const SizedBox(height: 16),

                const ProjectCard(
                  title:
                      'AnantaQ — Interactive Quantum Circuit Simulator',
                  description:
                      'Developed an interactive quantum circuit simulator '
                      'featuring 30+ quantum gates and a drag-and-drop '
                      'interface for building and visualizing quantum circuits. '
                      'Integrated presets for Shor’s, Grover’s, Simon’s, '
                      'Bernstein–Vazirani, and Deutsch–Jozsa algorithms, '
                      'along with a 14-qubit Grover-based password-search '
                      'demonstration. Built with Qiskit and OpenQASM 3.0 '
                      'support for circuit execution and interoperability.',
                ),

                const SizedBox(height: 28),

                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Back to Home'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------- PROJECT CARD ----------------

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFE2E5EE),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.5,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2B3A8F),
            ),
          ),

          const SizedBox(height: 8),

          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
