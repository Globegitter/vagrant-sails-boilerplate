
node['packages']['apt'].each do |name|
  package name do
    action :upgrade
  end
end

if node['packages']['npm'].size > 0
  include_recipe "npm"
  node['packages']['npm'].each do |name|
    package name do
      action :upgrade
    end
  end
end


