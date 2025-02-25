//
//  ViewController.swift
//  AppNews
//
//  Created by Amirov Foma on 24.02.2025.
//

import UIKit

final class NewsViewController: UIViewController {
    private let viewModel: ViewModel

    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

        fetchAndPrintNews()
    }

    private func fetchAndPrintNews() {
        Task {
            do {
                let news = try await viewModel.fetchNews()

                for item in news {
                    print("Заголовок: \(item.title)")
                    if let description = item.description {
                        print("Описание: \(description)")
                    }
                }
            } catch {
                print("")
            }
        }
    }
}
