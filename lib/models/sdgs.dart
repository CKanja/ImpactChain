import 'package:flutter/material.dart';

class SDG {
  final String image, title, description, target1, target2, action;
  final int sdgNum;
  final Color color;
  SDG({
    required this.sdgNum,
    required this.image,
    required this.title,
    required this.description,
    required this.color,
    required this.action,
    required this.target1,
    required this.target2
  });
}

List<SDG> sdgs = [
  SDG(
      sdgNum: 1,
      title: "No Poverty",
      action: "assets/images/sdg1-action.jpg",
      target1: "By 2030, eradicate extreme poverty for all people everywhere, currently measured as people living on less than 1.25 dollars a day",
      target2: "By 2030, reduce at least by half the proportion of men, women and children of all ages living in poverty in all its dimensions according to national definitions",
      description: "End poverty in all its forms everywhere",
      image: "assets/images/sdg1.jpg",
      color: const Color(0xFFE81F2D)
      ),
  SDG(
      sdgNum: 2,
      title: "Zero Hunger",
      action: "assets/images/sdg2-action.jpg",
      target1:
          "By 2030, end hunger and ensure access by all people, in particular the poor and people in vulnerable situations, including infants, to safe, nutritious and sufficient food all year round",
      target2:
          "By 2030, end all forms of malnutrition, including achieving, by 2025, the internationally agreed targets on stunting and wasting in children under 5 years of age, and address the nutritional needs of adolescent girls, pregnant and lactating women and older persons",
      description: "End hunger, achieve food security and improved nutrition and promote sustainable agriculture",
      image: "assets/images/sdg2.png",
      color: const Color(0xFFDDA83A)),
  SDG(
      sdgNum: 3,
      title: "Good Health and Wellbeing",
      action: "assets/images/sdg3-action.jpg",
      target1:
          "By 2030, reduce the global maternal mortality ratio to less than 70 per 100,000 live births.",
      target2:
          "By 2030, end preventable deaths of newborns and children under 5 years of age, with all countries aiming to reduce neonatal mortality to at least as low as 12 per 1,000 live births and under-5 mortality to at least as low as 25 per 1,000 live births.",
      description: "Ensure healthy lives and promote well-being for all at all ages",
      image: "assets/images/sdg3.jpg",
      color: const Color(0xFF319C4C)),
  SDG(
      sdgNum: 4,
      title: "Quality Education",
      action: "assets/images/sdg4-action.jpg",
      target1:
          "By 2030, ensure that all girls and boys complete free, equitable and quality primary and secondary education leading to relevant and effective learning outcomes.",
      target2:
          "By 2030, ensure that all girls and boys have access to quality early childhood development, care and pre-primary education so that they are ready for primary education",
      description: "Ensure inclusive and equitable quality education and promote lifelong learning opportunities for all",
      image: "assets/images/sdg4.png",
      color: const Color(0xFFC5192D)),
  SDG(
      sdgNum: 5,
      title: "Gender Equality",
      action: "assets/images/sdg5-action.jpg",
      target1:
          "End all forms of discrimination against all women and girls everywhere.",
      target2:
          "Eliminate all forms of violence against all women and girls in the public and private spheres, including trafficking and sexual and other types of exploitation.",
      description: "Achieve gender equality and empower all women and girls",
      image: "assets/images/sdg5.jpg",
      color: const Color(0xFFED422B)),
  SDG(
      sdgNum: 6,
      title: "Clean Water and Sanitation",
      action: "assets/images/sdg6-action.jpg",
      target1:
          "By 2030, achieve universal and equitable access to safe and affordable drinking water for all.",
      target2:
          "By 2030, achieve access to adequate and equitable sanitation and hygiene for all and end open defecation, paying special attention to the needs of women and girls and those in vulnerable situations.",
      description: "Ensure availability and sustainable management of water and sanitation for all",
      image: "assets/images/sdg6.jpg",
      color: const Color(0xFF00ACD8)),

      SDG(
      sdgNum: 7,
      title: "Affordable and Clean Energy",
      action: "assets/images/sdg7-action.jpg",
      target1:
          "By 2030, ensure universal access to affordable, reliable and modern energy services.",
      target2:
          "By 2030, increase substantially the share of renewable energy in the global energy mix.",
      description: "Ensure access to affordable, reliable, sustainable and modern energy for all",
      image: "assets/images/sdg7.jpg",
      color: const Color(0xFFFBB618)),

      SDG(
      sdgNum: 8,
      title: "Decent Work and Economic Growth",
      action: "assets/images/sdg8-action.jpg",
      target1:
          "Sustain per capita economic growth in accordance with national circumstances and, in particular, at least 7 per cent gross domestic product growth per annum in the least developed countries.",
      target2:
          "Achieve higher levels of economic productivity through diversification, technological upgrading and innovation, including through a focus on high-value added and labour-intensive sectors.",
      description: "Promote sustained, inclusive and sustainable economic growth, full and productive employment and decent work for all",
      image: "assets/images/sdg8.jpg",
      color: Color(0xFF8F1838)),

      SDG(
      sdgNum: 9,
      title: "Industry, Innovation and Infrastructure",
      action: "assets/images/sdg9-action.jpg",
      target1:
          "Develop quality, reliable, sustainable and resilient infrastructure, including regional and transborder infrastructure, to support economic development and human well-being, with a focus on affordable and equitable access for all.",
      target2:
          "Promote inclusive and sustainable industrialization and, by 2030, significantly raise industry’s share of employment and gross domestic product, in line with national circumstances, and double its share in least developed countries.",
      description: "Build resilient infrastructure, promote inclusive and sustainable industrialization and foster innovation",
      image: "assets/images/sdg9.jpg",
      color: const Color(0xFFF06C21)),

      SDG(
      sdgNum: 10,
      title: "Reduced Inequalities",
      action: "assets/images/sdg10-action.jpg",
      target1:
          "By 2030, progressively achieve and sustain income growth of the bottom 40 per cent of the population at a rate higher than the national average.",
      target2:
          "By 2030, empower and promote the social, economic and political inclusion of all, irrespective of age, sex, disability, race, ethnicity, origin, religion or economic or other status.",
      description: "Reduce inequality within and among countries",
      image: "assets/images/sdg10.png",
      color: const Color(0xFFDD1367)),

      SDG(
      sdgNum: 11,
      title: "Sustainable Cities and Communities",
      action: "assets/images/sdg11-action.jpg",
      target1:
          "By 2030, ensure access for all to adequate, safe and affordable housing and basic services and upgrade slums.",
      target2:
          "By 2030, provide access to safe, affordable, accessible and sustainable transport systems for all, improving road safety, notably by expanding public transport, with special attention to the needs of those in vulnerable situations, women, children, persons with disabilities and older persons.",
      description: "Make cities and human settlements inclusive, safe, resilient and sustainable",
      image: "assets/images/sdg11.jpg",
      color: const Color(0xFFF79C26)),

      SDG(
      sdgNum: 12,
      title: "Responsible Consumption and Production",
      action: "assets/images/sdg12-action.jpg",
      target1:
          "Implement the 10-Year Framework of Programmes on Sustainable Consumption and Production Patterns, all countries taking action, with developed countries taking the lead, taking into account the development and capabilities of developing countries",
      target2:
          "By 2030, achieve the sustainable management and efficient use of natural resources",
      description: "Ensure sustainable consumption and production patterns",
      image: "assets/images/sdg12.jpg",
      color: const Color(0xFFCD8D2F)),

      SDG(
      sdgNum: 13,
      title: "Climate Action",
      action: "assets/images/sdg13-action.jpg",
      target1:
          "Strengthen resilience and adaptive capacity to climate-related hazards and natural disasters in all countries.",
      target2:
          "Improve education, awareness-raising and human and institutional capacity on climate change mitigation, adaptation, impact reduction and early warning.",
      description: "Take urgent action to combat climate change and its impacts",
      image: "assets/images/sdg13.jpg",
      color: Color.fromARGB(255, 69, 128, 74)),

      SDG(
      sdgNum: 14,
      title: "Life Below Water",
      action: "assets/images/sdg14-action.jpg",
      target1:
          "By 2025, prevent and significantly reduce marine pollution of all kinds, in particular from land-based activities, including marine debris and nutrient pollution.",
      target2:
          "Minimize and address the impacts of ocean acidification, including through enhanced scientific cooperation at all levels.",
      description: "Conserve and sustainably use the oceans, seas and marine resources for sustainable development",
      image: "assets/images/sdg14.png",
      color: const Color(0xFF0A97D9)),

      SDG(
      sdgNum: 15,
      title: "Life on Land",
      action: "assets/images/sdg15-action.jpg",
      target1:
          "By 2030, combat desertification, restore degraded land and soil, including land affected by desertification, drought and floods, and strive to achieve a land degradation-neutral world.",
      target2:
          "By 2030, ensure the conservation of mountain ecosystems, including their biodiversity, in order to enhance their capacity to provide benefits that are essential for sustainable development.",
      description: "Protect, restore and promote sustainable use of terrestrial ecosystems, sustainably manage forests, combat desertification, and halt and reverse land degradation and halt biodiversity loss",
      image: "assets/images/sdg15.jpg",
      color: const Color(0xFF45AF4E)),

      SDG(
      sdgNum: 16,
      title: "Peace, Justice and Strong Institutions",
      action: "assets/images/sdg16-action.jpg",
      target1:
          "Significantly reduce all forms of violence and related death rates everywhere.",
      target2:
          "End abuse, exploitation, trafficking and all forms of violence against and torture of children.",
      description: "Promote peaceful and inclusive societies for sustainable development, provide access to justice for all and build effective, accountable and inclusive institutions at all levels",
      image: "assets/images/sdg16.jpg",
      color: const Color(0xFF00578B)),

      SDG(
      sdgNum: 17,
      title: "Partnership for the Goals",
      action: "assets/images/sdg17-action.jpg",
      target1:
          "Strengthen domestic resource mobilization, including through international support to developing countries, to improve domestic capacity for tax and other revenue collection.",
      target2:
          "Mobilize additional financial resources for developing countries from multiple sources.",
      description: "Strengthen the means of implementation and revitalize the Global Partnership for Sustainable Development",
      image: "assets/images/sdg17.jpg",
      color: Color.fromARGB(255, 17, 61, 92)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
