module.exports = {
    async rewrites() {
        return [
            {
        source: "/:path(documentation|tutorials)/:subpath*",
        destination: "/index.html",
        },
            {
        source: "/:path(css|js|data|images|downloads|favicon\.ico|favicon\.svg|img|theme-settings\.json|videos)/:subpath*",
        destination: "/:path",
        },
        ]
    },
    
    async redirects() {
        return [
                {
        source: '/',
        destination: '/documentation/swiftinsg/documentation',
        permanent: true,
        },
                ]
    },
};
