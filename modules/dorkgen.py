import random

engines = ["inurl", "intext", "intitle"]
errors = [
    "mysql_fetch_array", "You have an error in your SQL syntax;",
    "Warning: mysql", "include_path", "Warning: include", 
    "supplied argument is not a valid MySQL", "num_rows"
]
pages = ["php?id=", "news.php?id=", "item.php?id=", "view.php?id=", "product.php?id="]

def generate_dork():
    engine = random.choice(engines)
    error = random.choice(errors)
    page = random.choice(pages)
    return f'{engine}:"{page}" "{error}"'

def main():
    try:
        count = int(input("🔢 How many dorks to generate? "))
        print("\n🎯 Your SQLi Dorks:\n")
        for _ in range(count):
            print(generate_dork())
    except:
        print("❌ Invalid input!")

if __name__ == "__main__":
    main()
