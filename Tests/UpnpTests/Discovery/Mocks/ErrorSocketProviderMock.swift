import Socket

@testable import Upnp

struct ErrorSocketProviderMock: SocketProviderProtocol {
    static func create(
        family: Socket.ProtocolFamily,
        type: Socket.SocketType,
        proto: Socket.SocketProtocol
    ) throws -> SocketProtocol {
        return SocketMock(messagesToRead: [
            SocketProviderMockHelpers.validSSDPSearchResponse,
            "========ERROR========",
        ])
    }
}
