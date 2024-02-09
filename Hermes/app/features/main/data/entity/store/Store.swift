//
//  Store.swift
//  Hermes
//
//  Created by José Ruiz on 27/2/24.
//

import Foundation

struct Store: Codable, Hashable, Identifiable {
    static func == (lhs: Store, rhs: Store) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var id: String
    var name: String
    var address: String
    var phoneNumber: String
    var emailAddress: String
    var website: String
    var officeHours: [String: String]
    var description: String
    var returnPolicy: String
    var refundPolicy: String
    var brands: [String]
    var products: [Product]
    var promotions: [Promotion]
    var paymentMethods: [String]
    var customerServiceContact: ContactInfo
    var privacyPolicy: String
    var securityPolicies: [String]
    var memberships: [Membership]
    var termsAndConditions: String
    var shippingInfo: ShippingInfo
    var warrantyPolicies: String
    var testimonials: [Testimonial]
    var specialEvents: [SpecialEvent]
    
    // Optional information
    var equipment: [String]? = nil
    var securityPoliciesPhysicalStore: [String]? = nil
    var customerServiceProcedures: String? = nil
    var history: String? = nil
    var manufacturingProcess: String? = nil
    var certifications: [String]? = nil
    var sustainabilityPolicies: String? = nil
    var communityCollaborations: [String]? = nil
    var registrationDetails: LegalDetails? = nil
    var packagingAndShippingInfo: String? = nil
    var websiteTermsOfUse: String? = nil
    var userContentPolicies: String? = nil
    var affiliatePrograms: [AffiliateProgram]? = nil
    var wholesalePolicies: String? = nil
    var marketingCommunicationPolicies: String? = nil
    var legalCompliancePolicies: String? = nil
    var productCustomizationOptions: [String]? = nil
    var additionalServices: [String]? = nil
    
    init(id: String, name: String, address: String, phoneNumber: String, emailAddress: String, website: String, officeHours: [String: String], description: String, returnPolicy: String, refundPolicy: String, brands: [String], products: [Product], promotions: [Promotion], paymentMethods: [String], customerServiceContact: ContactInfo, privacyPolicy: String, securityPolicies: [String], memberships: [Membership], termsAndConditions: String, shippingInfo: ShippingInfo, warrantyPolicies: String, testimonials: [Testimonial], specialEvents: [SpecialEvent], equipment: [String]? = nil, securityPoliciesPhysicalStore: [String]? = nil, customerServiceProcedures: String? = nil, history: String? = nil, manufacturingProcess: String? = nil, certifications: [String]? = nil, sustainabilityPolicies: String? = nil, communityCollaborations: [String]? = nil, registrationDetails: LegalDetails? = nil, packagingAndShippingInfo: String? = nil, websiteTermsOfUse: String? = nil, userContentPolicies: String? = nil, affiliatePrograms: [AffiliateProgram]? = nil, wholesalePolicies: String? = nil, marketingCommunicationPolicies: String? = nil, legalCompliancePolicies: String? = nil, productCustomizationOptions: [String]? = nil, additionalServices: [String]? = nil) {
        self.id = id
        self.name = name
        self.address = address
        self.phoneNumber = phoneNumber
        self.emailAddress = emailAddress
        self.website = website
        self.officeHours = officeHours
        self.description = description
        self.returnPolicy = returnPolicy
        self.refundPolicy = refundPolicy
        self.brands = brands
        self.products = products
        self.promotions = promotions
        self.paymentMethods = paymentMethods
        self.customerServiceContact = customerServiceContact
        self.privacyPolicy = privacyPolicy
        self.securityPolicies = securityPolicies
        self.memberships = memberships
        self.termsAndConditions = termsAndConditions
        self.shippingInfo = shippingInfo
        self.warrantyPolicies = warrantyPolicies
        self.testimonials = testimonials
        self.specialEvents = specialEvents
        
        self.equipment = equipment
        self.securityPoliciesPhysicalStore = securityPoliciesPhysicalStore
        self.customerServiceProcedures = customerServiceProcedures
        self.history = history
        self.manufacturingProcess = manufacturingProcess
        self.certifications = certifications
        self.sustainabilityPolicies = sustainabilityPolicies
        self.communityCollaborations = communityCollaborations
        self.registrationDetails = registrationDetails
        self.packagingAndShippingInfo = packagingAndShippingInfo
        self.websiteTermsOfUse = websiteTermsOfUse
        self.userContentPolicies = userContentPolicies
        self.affiliatePrograms = affiliatePrograms
        self.wholesalePolicies = wholesalePolicies
        self.marketingCommunicationPolicies = marketingCommunicationPolicies
        self.legalCompliancePolicies = legalCompliancePolicies
        self.productCustomizationOptions = productCustomizationOptions
        self.additionalServices = additionalServices
    }
}

struct ContactInfo: Codable {
    var phone: String
    var email: String
    var onlineChat: String? = nil
}

struct Promotion: Codable {
    var description: String
    var validity: String
}

struct Membership: Codable {
    var name: String
    var benefits: [String]
}

struct LegalDetails: Codable {
    var registrationNumber: String
    var details: String
}

struct ShippingInfo: Codable {
    var shippingOptions: [String]
    var deliveryTimes: [String: String]
}

struct Testimonial: Codable {
    var customerName: String
    var comment: String
}

struct SpecialEvent: Codable {
    var name: String
    var date: String
}

struct AffiliateProgram: Codable {
    var name: String
    var details: String
}
