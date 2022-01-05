import Socket

@testable import Upnp

struct SocketProviderMock: SocketProviderProtocol {
    static func create(
        family: Socket.ProtocolFamily,
        type: Socket.SocketType,
        proto: Socket.SocketProtocol
    ) throws -> SocketProtocol {
        let validResponse = SocketProviderMockHelpers.validSSDPSearchResponse
        return SocketMock(messagesToRead: [validResponse, validResponse])
    }
}
