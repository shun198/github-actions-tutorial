/** @type {import('next').NextConfig} */
const nextConfig = {
  // next buildすると自動的にexportするので記載
  output: 'export',
  // 画像の最適化を無効化し、元の画像ファイルをそのまま使用
  images: {
    unoptimized: true,
  },
};

module.exports = nextConfig;
