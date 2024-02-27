//
//  Store.swift
//  Hermes
//
//  Created by José Ruiz on 27/2/24.
//

import Foundation

class Store: Codable, Hashable, Identifiable {
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
    var productAvailability: [ProductAvailability]? = nil
    var additionalServices: [String]? = nil
    
    private enum CodingKeys: String, CodingKey {
        case id, name, address, phoneNumber, emailAddress, website
        case officeHours, description, returnPolicy, refundPolicy, brands
        case products, promotions, paymentMethods, customerServiceContact
        case privacyPolicy, securityPolicies, memberships, termsAndConditions
        case shippingInfo, warrantyPolicies, testimonials, specialEvents
        case equipment, securityPoliciesPhysicalStore, customerServiceProcedures, history
        case manufacturingProcess, certifications, sustainabilityPolicies, communityCollaborations
        case registrationDetails, packagingAndShippingInfo, websiteTermsOfUse, userContentPolicies
        case affiliatePrograms, wholesalePolicies, marketingCommunicationPolicies
        case legalCompliancePolicies, productCustomizationOptions, productAvailability, additionalServices
        
    }
    
    init(id: String, name: String, address: String, phoneNumber: String, emailAddress: String, website: String, officeHours: [String: String], description: String, returnPolicy: String, refundPolicy: String, brands: [String], products: [Product], promotions: [Promotion], paymentMethods: [String], customerServiceContact: ContactInfo, privacyPolicy: String, securityPolicies: [String], memberships: [Membership], termsAndConditions: String, shippingInfo: ShippingInfo, warrantyPolicies: String, testimonials: [Testimonial], specialEvents: [SpecialEvent], equipment: [String]? = nil, securityPoliciesPhysicalStore: [String]? = nil, customerServiceProcedures: String? = nil, history: String? = nil, manufacturingProcess: String? = nil, certifications: [String]? = nil, sustainabilityPolicies: String? = nil, communityCollaborations: [String]? = nil, registrationDetails: LegalDetails? = nil, packagingAndShippingInfo: String? = nil, websiteTermsOfUse: String? = nil, userContentPolicies: String? = nil, affiliatePrograms: [AffiliateProgram]? = nil, wholesalePolicies: String? = nil, marketingCommunicationPolicies: String? = nil, legalCompliancePolicies: String? = nil, productCustomizationOptions: [String]? = nil, productAvailability: [ProductAvailability]? = nil, additionalServices: [String]? = nil) {
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
        self.productAvailability = productAvailability
        self.additionalServices = additionalServices
    }

    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        address = try container.decode(String.self, forKey: .address)
        phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
        emailAddress = try container.decode(String.self, forKey: .emailAddress)
        website = try container.decode(String.self, forKey: .website)
        officeHours = try container.decode([String: String].self, forKey: .officeHours)
        description = try container.decode(String.self, forKey: .description)
        returnPolicy = try container.decode(String.self, forKey: .returnPolicy)
        refundPolicy = try container.decode(String.self, forKey: .refundPolicy)
        brands = try container.decode([String].self, forKey: .brands)
        products = try container.decode([Product].self, forKey: .products)
        promotions = try container.decode([Promotion].self, forKey: .promotions)
        paymentMethods = try container.decode([String].self, forKey: .paymentMethods)
        customerServiceContact = try container.decode(ContactInfo.self, forKey: .customerServiceContact)
        privacyPolicy = try container.decode(String.self, forKey: .privacyPolicy)
        securityPolicies = try container.decode([String].self, forKey: .securityPolicies)
        memberships = try container.decode([Membership].self, forKey: .memberships)
        termsAndConditions = try container.decode(String.self, forKey: .termsAndConditions)
        shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)
        warrantyPolicies = try container.decode(String.self, forKey: .warrantyPolicies)
        testimonials = try container.decode([Testimonial].self, forKey: .testimonials)
        specialEvents = try container.decode([SpecialEvent].self, forKey: .specialEvents)
        
        equipment = try container.decodeIfPresent([String].self, forKey: .equipment)
        securityPoliciesPhysicalStore = try container.decodeIfPresent([String].self, forKey: .securityPoliciesPhysicalStore)
        customerServiceProcedures = try container.decodeIfPresent(String.self, forKey: .customerServiceProcedures)
        history = try container.decodeIfPresent(String.self, forKey: .history)
        manufacturingProcess = try container.decodeIfPresent(String.self, forKey: .manufacturingProcess)
        certifications = try container.decodeIfPresent([String].self, forKey: .certifications)
        sustainabilityPolicies = try container.decodeIfPresent(String.self, forKey: .sustainabilityPolicies)
        communityCollaborations = try container.decodeIfPresent([String].self, forKey: .communityCollaborations)
        registrationDetails = try container.decodeIfPresent(LegalDetails.self, forKey: .registrationDetails)
        packagingAndShippingInfo = try container.decodeIfPresent(String.self, forKey: .packagingAndShippingInfo)
        websiteTermsOfUse = try container.decodeIfPresent(String.self, forKey: .websiteTermsOfUse)
        userContentPolicies = try container.decodeIfPresent(String.self, forKey: .userContentPolicies)
        affiliatePrograms = try container.decodeIfPresent([AffiliateProgram].self, forKey: .affiliatePrograms)
        wholesalePolicies = try container.decodeIfPresent(String.self, forKey: .wholesalePolicies)
        marketingCommunicationPolicies = try container.decodeIfPresent(String.self, forKey: .marketingCommunicationPolicies)
        legalCompliancePolicies = try container.decodeIfPresent(String.self, forKey: .legalCompliancePolicies)
        productCustomizationOptions = try container.decodeIfPresent([String].self, forKey: .productCustomizationOptions)
        productAvailability = try container.decodeIfPresent([ProductAvailability].self, forKey: .productAvailability)
        additionalServices = try container.decodeIfPresent([String].self, forKey: .additionalServices)
        
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(address, forKey: .address)
        try container.encode(phoneNumber, forKey: .phoneNumber)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encode(website, forKey: .website)
        try container.encode(officeHours, forKey: .officeHours)
        try container.encode(description, forKey: .description)
        try container.encode(returnPolicy, forKey: .returnPolicy)
        try container.encode(refundPolicy, forKey: .refundPolicy)
        try container.encode(brands, forKey: .brands)
        try container.encode(products, forKey: .products)
        try container.encode(promotions, forKey: .promotions)
        try container.encode(paymentMethods, forKey: .paymentMethods)
        try container.encode(customerServiceContact, forKey: .customerServiceContact)
        try container.encode(privacyPolicy, forKey: .privacyPolicy)
        try container.encode(securityPolicies, forKey: .securityPolicies)
        try container.encode(memberships, forKey: .memberships)
        try container.encode(termsAndConditions, forKey: .termsAndConditions)
        try container.encode(shippingInfo, forKey: .shippingInfo)
        try container.encode(warrantyPolicies, forKey: .warrantyPolicies)
        try container.encode(testimonials, forKey: .testimonials)
        try container.encode(specialEvents, forKey: .specialEvents)
        
        try container.encodeIfPresent(equipment, forKey: .equipment)
        try container.encodeIfPresent(securityPoliciesPhysicalStore, forKey: .securityPoliciesPhysicalStore)
        try container.encodeIfPresent(customerServiceProcedures, forKey: .customerServiceProcedures)
        try container.encodeIfPresent(history, forKey: .history)
        try container.encodeIfPresent(manufacturingProcess, forKey: .manufacturingProcess)
        try container.encodeIfPresent(certifications, forKey: .certifications)
        try container.encodeIfPresent(sustainabilityPolicies, forKey: .sustainabilityPolicies)
        try container.encodeIfPresent(communityCollaborations, forKey: .communityCollaborations)
        try container.encodeIfPresent(registrationDetails, forKey: .registrationDetails)
        try container.encodeIfPresent(packagingAndShippingInfo, forKey: .packagingAndShippingInfo)
        try container.encodeIfPresent(websiteTermsOfUse, forKey: .websiteTermsOfUse)
        try container.encodeIfPresent(userContentPolicies, forKey: .userContentPolicies)
        try container.encodeIfPresent(affiliatePrograms, forKey: .affiliatePrograms)
        try container.encodeIfPresent(wholesalePolicies, forKey: .wholesalePolicies)
        try container.encodeIfPresent(marketingCommunicationPolicies, forKey: .marketingCommunicationPolicies)
        try container.encodeIfPresent(legalCompliancePolicies, forKey: .legalCompliancePolicies)
        try container.encodeIfPresent(productCustomizationOptions, forKey: .productCustomizationOptions)
        try container.encodeIfPresent(productAvailability, forKey: .productAvailability)
        try container.encodeIfPresent(additionalServices, forKey: .additionalServices)
    }
}

struct ContactInfo: Codable {
    var phone: String
    var email: String
    var onlineChat: String?
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

struct ProductAvailability: Codable {
    var product: Product
    var availability: String
}
