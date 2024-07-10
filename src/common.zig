/// The ground reference node.
const GND: Node = Node{ .id = 0, .voltage = 0, .current = 0, .power = 0 };

/// Global ID.
var GID: u32 = 1;

/// TODO:
const Component = struct { id: u32, ingressNode: Node, egressNode: Node };

/// Abstraction of a circuit node (a region between two circuit components).
/// All nodes have:
///     - TODO:
const Node = struct {
    id: u32,
    voltage: u32,
    current: u32,
    power: u32,

    /// Initializes a new 'Node' instance and increments the global ID (GID)
    /// variable.
    pub fn init() Node {
        const node = Node{ .id = GID, .voltage = 0, .current = 0, .power = 0 };
        GID += 1;
        return node;
    }
};
