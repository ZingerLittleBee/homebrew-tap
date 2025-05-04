cask "dockerman" do
  version "2.1.1"
  sha256 :no_check

  on_arm do
    url "https://assets.dockerman.app/#{version}/Dockerman_#{version}_aarch64.dmg"
  end
  on_intel do
    url "https://assets.dockerman.app/#{version}/Dockerman_#{version}_x64.dmg"
  end
  
  name "Dockerman"
  desc "Modern Docker management simplified"
  homepage "https://dockerman.app/"

  auto_updates true

  app "Dockerman.app"

  zap trash: [
    "~/Library/Application Support/app.dockerman",
    "~/Library/Caches/app.dockerman",
    "~/Library/Logs/app.dockerman",
  ]
end
