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
        },{
        source: '/contributing',
        destination: '/documentation/swiftinsg/contributing',
        permanent: true,
        },{
        source: '/more',
        destination: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
        permanent: true,
        },{
        source: '/documentation',
        destination: '/documentation/swiftinsg/documentation',
        permanent: true,
        },{
        source: '/tutorials',
        destination: '/documentation/swiftinsg/documentation',
        permanent: true,
        },{
        source: '/:path',
        destination: '/tutorials/:path',
        permanent: true,
        },]
    },
};
