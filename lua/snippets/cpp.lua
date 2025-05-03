local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

-- templateCpp
-- yes
-- no
-- primeFactors
-- isPrime
-- fastPower
-- dfs
-- bfs
-- adjlist
ls.add_snippets("cpp", {
    s("tempcpp", {
        t({
            "#include <bits/stdc++.h>",
            "using namespace std;",
            "#ifdef Rashad",
            '#include "debug.hpp"',
            "#else",
            "#define debug(...) 0",
            "#define debug_itr(...) 0",
            "#define debug_bits(...) 0",
            "#endif",
            "#define fastio ios_base::sync_with_stdio(false); cin.tie(NULL);",
            "",
            "#define int long long",
            "#define double long double",
            "#define all(a) (a).begin(), (a).end()",
            "#define allr(a) (a).rbegin(), (a).rend()",
            "#define sz(a) (int)(a).size()",
            "#define pb push_back",
            "#define mp make_pair",
            "#define f first",
            "#define s second",
            "#define vi vector<int>",
            "#define pi pair<int,int>",
            "#define OO 2e9",
            '#define endl "\\n"',
            "const int dx[]{0, 1, 0, -1, -1, -1, 1, 1};",
            "const int dy[]{1, 0, -1, 0, -1, 1, -1, 1};",
            "",
            "template <typename T> istream &operator>>(istream &input, vector<T> &data) {",
            "    for (T &x : data) input >> x;",
            "    return input;",
            "}",
            "template <typename T> ostream &operator<<(ostream &output, const vector<T> &data) {",
            "    for (const T &x : data) output << x << ' ';",
            "    return output;",
            "}",
            "const int MOD = 1e9+7;",
            "",
            "void solve() {",
            "    ",
            "}",
            "",
            "int32_t main() {",
            "    /*freopen(\"whereami.in\", \"r\", stdin);*/",
            "    /*freopen(\"whereami.out\", \"w\", stdout);*/",
            "    fastio",
            "    int t = 1;",
            "    /*cin>>t;*/",
            "    while (t--)",
            "        solve();",
            "    return 0;",
            "}",
        }),
    }),
    s("yes", {
        t({
            'cout << "YES" << endl;',
        }),
    }),
    s("no", {
        t({
            'cout << "NO" << endl;',
        }),
    }),
    s("primeFactors", {
        t({

            "vi primeFactors(int n) {",
            "    vi factors;",
            "    while (n % 2 == 0) {",
            "        factors.push_back(2);",
            "        n /= 2;",
            "    }",
            "    for (int i = 3; i <= sqrt(n); i += 2) {",
            "        while (n % i == 0) {",
            "            factors.push_back(i);",
            "            n /= i;",
            "        }",
            "    }",
            "    if (n > 2) {",
            "        factors.push_back(n);",
            "    }",
            "    return factors;",
            "}",
        }),
    }),
    s("isPrime", {
        t({
            "bool isPrime(int n) {",
            "    if(n < 2) return false;",
            "    if(n == 2) return true;",
            "    if(n % 2 == 0) return false;",
            "    for(int i = 3; i * i <= n; i += 2) {",
            "        if(n % i == 0) return false;",
            "    }",
            "    return true;",
            "}",
        }),
    }),
    s("fastPower", {
        t({
            "int fast_power(int a, int b, int mod) {",
            "    int res = 1;",
            "    while (b) {",
            "        if (b & 1) res = res * a % mod;",
            "        a = a * a % mod;",
            "        b >>= 1;",
            "    }",
            "    return res;",
            "}",
        }),
    }),
    s("dfsCode", {
        t({
            "function<void(int)> dfs = [&](int p) {",
            "    vis[p] = 1;",
            "    for (auto v : adj[p]) {",
            "        if (!vis[v]) dfs(v);",
            "    }",
            "};",
        }),
    }),
    s("bfsCode", {
        t({
            "vi levels(nodes+1, -1);",
            "vi parent(nodes+1, -1);",
            "function<void(int)> bfs = [&](int start) {",
            "    queue<int> q;",
            "    q.push(start);",
            "    vis[start] = true;",
            "    levels[start] = 0;",
            "    while (!q.empty()) {",
            "        int u = q.front(); q.pop();",
            "        for (int v : adj[u]) {",
            "            if (!vis[v]) {",
            "                vis[v] = true;",
            "                q.push(v);",
            "                levels[v] = levels[u] + 1;",
            "                parent[v] = u;",
            "            }",
            "        }",
            "    }",
            "};",
        }),
    }),
    s("adjlist", {
        t({
            "int nodes, edges;cin>>nodes>>edges;",
            "vector<vi> adj(nodes+1);",
            "vector<bool> vis(nodes+1, false);",
            "for (int i = 0; i < edges; i++) {",
            "    int u, v;cin>>u>>v;",
            "    adj[u].push_back(v);",
            "    adj[v].push_back(u);",
            "}",
        }),
    }),
})
