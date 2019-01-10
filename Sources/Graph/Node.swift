//
//  Node.swift
//  Graph
//
//  Created by Ardalan Samimi and Kevin Alemi on 2019-01-10.
//

class Node: Equatable, CustomStringConvertible {

	public let label: Int
	private(set) var neighbours: [Node]

	public var description: String {
		return "\(self.label)"
	}

	convenience init(withLabel label: Int) {
		self.init(withLabel: label, neighbours: [])
	}

	init(withLabel label: Int, neighbours: [Node]) {
		self.label = label
		self.neighbours = neighbours
	}

	public func addNeighbour(_ node: Node) {
		self.neighbours.insert(node, at: 0)
	}

	public func removeNeighbours(_ node: Node) {
		self.neighbours = self.neighbours.filter { $0 != node }
	}

	static func ==(lhs: Node, rhs: Node) -> Bool {
		return lhs.label == rhs.label && lhs.neighbours == rhs.neighbours
	}

}