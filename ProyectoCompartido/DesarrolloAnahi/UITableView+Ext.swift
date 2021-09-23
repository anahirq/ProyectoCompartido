//
//  UITableView+Ext.swift
//  ProyectoCompartido
//
//  Created by Anahi Rojas on 22/09/21.
//

import UIKit

extension UITableView {
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
