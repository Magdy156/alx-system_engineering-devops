#!/usr/bin/python3
""""""


def top_ten(subreddit):
    """func that get thtop ten title of posts on Reddit"""
    import requests

    subInfo = requests.get(
        f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10",
        headers={"User-Agent": "My-User-Agent"},
        allow_redirects=False)
    # In case of redirectio or server and client erorr
    if subInfo.status_code >= 300:
        print('None')
    else:
        [print(info.get("data").get("title"))
            for info in subInfo.json().get("data").get("children")]
