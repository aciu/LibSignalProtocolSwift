//
//  SignedPrekeyStoreDelegate.swift
//  TestC
//
//  Created by User on 21.09.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

/**
 Implement the `SignedPreKeyStoreDelegate` protocol to handle the Signed Pre Key storage of the
 Signal Protocol API. The keys should be stored in a secure database and be treated as
 unspecified data blobs. Register your implementation with an instance of `KeyStore` to
 receive events.
 */
protocol SignedPreKeyStoreDelegate {

    /**
     Provide a Signed Pre Key for a given id.

     - parameter id: The Signed Pre Key ID
     - returns: The Signed Pre Key, or `nil` if no key exists
     */
    func signedPreKey(for id: SignedPreKeyID) -> [UInt8]?

    /**
     Store a Signed Pre Key for a given id.

     - parameter signedPreKey: The Signed Pre Key to store
     - parameter id: The Signed Pre Key id
     - returns: `true` if the key was stored
     */
    func store(signedPreKey: [UInt8], for id: SignedPreKeyID) -> Bool

    /**
     Indicate if a Signed Pre Key exists for an id.

     - parameter id: The Signed Pre Key id
     - returns: `true` if a key exists
     */
    func containsSignedPreKey(for id: SignedPreKeyID) -> Bool

    /**
     Remove a Signed Pre Key.

     - parameter id: The Signed Pre Key id.
     - returns: `true` if the key was removed
     */
    func removeSignedPreKey(for id: SignedPreKeyID) -> Bool

    /**
     Function called to perform cleanup when the data store context is being destroyed.
     */
    func cleanUp()
}
