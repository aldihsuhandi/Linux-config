#include<bits/stdc++.h>
#define fi first
#define se second
#define pow2(n) (1 << (n))
#define pb push_back
#define pqueue priority_queue

using namespace std;
using ll = long long;
using ull = unsigned long long;

typedef pair<int, int> pii;

const int INF = 1000000000;

ll power(ll a, ll b)
{
    ll ret = 1;
    while(b > 0){
        if(b % 2 == 1)
            ret *= a;
        
        a *= a;
        b /= 2;
    }

    return ret;
}

int main()
{
    
}
