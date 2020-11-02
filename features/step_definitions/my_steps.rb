When ("inicio la aplicacion") do
    visit '/'
end

Then("muestra {string}") do |titulo|
    expect(page).to have_css "h1", text: titulo
end

Then("imprime {string}") do |mensaje|
    expect(page).to have_css "p", text: mensaje
end

Given("inicio la aplicacion con la letra {string}") do |string|
    visit '/'
end

When("envia letra {string}") do |string|
   fill_in "letra", :with => string
   click_button "Enviar"
end

Then("mostrar {string}") do |mensaje|
    expect(page).to have_css "div#mensaje", text: mensaje
end

When("inicio la aplicacion con la palabra {string}") do |palabra|
    visit "/secreto?p=#{palabra}"
end

