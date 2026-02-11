cask "dockerman" do
  version "3.12.0"
  sha256 :no_check

  on_arm do
    url "https://assets.dockerman.app/#{version}/Dockerman_#{version}_universal.dmg"
  end
  on_intel do
    url "https://assets.dockerman.app/#{version}/Dockerman_#{version}_universal.dmg"
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
