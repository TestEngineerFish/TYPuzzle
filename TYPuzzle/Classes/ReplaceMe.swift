
protocol ViewProtocol {
    
}

struct PuzzleTheme {
    
    struct Color {
        let primary: UIColor
        let onPrimary: UIColor
        let secondary: UIColor
        let onSecondary: UIColor
        let background: UIColor
        let surface: UIColor
        let onSurface: UIColor
    }
    
    struct Font {
        let primary: UIFont
        let secondary: UIFont
    }
    
    let color: Color
    let font: Font
    
    
    enum Theme {
        case red
    }
    
    init(_ theme: Theme) {
        switch theme {
        case .red:
            color = Color(primary: .red, onPrimary: .red, secondary: .red, onSecondary: .red, background: .white, surface: .white, onSurface: .white)
            font = Font(primary: .systemFont(ofSize: 15), secondary: .systemFont(ofSize: 12))
        }
    }
}

struct PuzzleConfig {
    var theme: PuzzleTheme.Theme
}
