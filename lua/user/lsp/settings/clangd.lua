return {
    name = 'clangd',
    cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
    initialization_options = {
        fallback_flags = {'std=c11'}
    }
}
