import Vapor

extension Application.Redis {
    @available(*, deprecated, message: "use `app.redises.use(_: RedisConfiguration, as: RedisID)`")
    var configuration: RedisConfiguration? {
        get {
            self.application.redises.configuration(for: .default)
        }
        set {
            guard let newConfig = newValue else {
                return
            }
            self.application.redises.use(newConfig, as: .default)
        }
    }
}