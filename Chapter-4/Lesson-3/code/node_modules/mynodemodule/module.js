// random color
class Color {
  constructor(name, color) {
    this.name = name;
    this.color = color;
  }
}

const allColors = [
  new Color("coolcyan", "#00CED1"),
  new Color("lavender", "#E6E6FA"),
  new Color("orange", "#FFA500"),
  new Color("boldblue", "#006E96"),
  new Color("teal", "#008080"),
];

exports.getRandomColor = () => {
  return allColors[Math.floor(Math.random() * allColors.length)];
};

exports.allColors = allColors;
