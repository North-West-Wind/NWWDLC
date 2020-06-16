module.exports = {
  twoDigits(d) {
    if (0 <= d && d < 10) return "0" + d.toString();
    if (-10 < d && d < 0) return "-0" + (-1 * d).toString();
    return d.toString();
  },
  getRandomNumber(min, max) {
  return Math.random() * (max - min) + min;
  }
  
}