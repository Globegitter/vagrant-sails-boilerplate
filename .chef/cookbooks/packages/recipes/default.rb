
node['packages']['apt'].each do |name|
  package name do
    action :upgrade
  end
end

if node['packages']['npm'].size > 0
  node['packages']['npm'].each do |name|
    npm_package name do
      action :upgrade
    end
  end
end


