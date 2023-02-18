// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })

Cypress.Commands.add('addProdutoTipo1', (produto, tamanho, cor, quantidade) => {

    cy.get('[class="product-block grid"]').contains(produto).click()
    
    cy.get(tamanho).click()

    cy.get(cor).click()

    cy.get('.input-text').clear().type(quantidade)

    cy.get('.single_add_to_cart_button').click()

    cy.get('.dropdown-toggle > .mini-cart-items').should('contain', quantidade) 

})

Cypress.Commands.add('addProdutoTipo2', (produto) => {

    cy.get('.tbay-woocommerce-breadcrumb > :nth-child(1) > a').click()

    cy.get('[class="product-block grid"]').contains(produto).click()

    cy.get('.single_add_to_cart_button').click()

})