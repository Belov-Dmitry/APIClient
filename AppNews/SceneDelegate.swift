//
//  SceneDelegate.swift
//  AppNews
//
//  Created by мак on 13.02.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

                // Создаем зависимости
        let networkService = NetworkService(apiClient: APIClient())
                let viewModel = ViewModel(networkService: networkService)

                // Создаем NewsViewController с использованием программного инициализатора
                let newsViewController = NewsViewController(viewModel: viewModel)

                // Настраиваем окно
                self.window = UIWindow(windowScene: windowScene)
                self.window?.rootViewController = newsViewController
                self.window?.makeKeyAndVisible()
    }
}
