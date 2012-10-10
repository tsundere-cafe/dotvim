def require_without_bundler gem
  _gem_path = Dir.glob("#{Gem.path.grep(/global$/).first}/gems/#{gem}*/lib").first
  if _gem_path
    $LOAD_PATH << _gem_path
    require gem
  else
    puts "Please put #{gem} in your global"
  end
end

Pry.config.theme = "solarized"
Pry.config.editor = 'vim'

# Toys methods
# See https://gist.github.com/807492
class Array
  def self.toy(n=10, &block)
    block_given? ? Array.new(n,&block) : Array.new(n) {|i| i+1}
  end
end

class Hash
  def self.toy(n=10)
    Hash[Array.toy(n){|c| (96+(c+1)).chr.to_sym}.zip(Array.toy(n))]
  end
end
