package = 'tracing'
version = 'scm-1'

source = {
	url = 'git://github.com/tarantool/tracing.git',
	branch = 'master',
}

description = {
	summary = 'Lua platform API for OpenTracing',
	homepage = 'https://github.com/tarantool/tracing.git',
	license = 'BSD',
}

dependencies = {
	'lua >= 5.1',
	'checks >= 3.0.1',
}

build = {
	type = 'make',
	build_target = 'all',
	install = {
		lua = {
			['opentracing'] = 'tracing/opentracing/init.lua',
			['opentracing.span'] = 'tracing/opentracing/span.lua',
			['opentracing.span_context'] = 'tracing/opentracing/span_context.lua',
			['opentracing.tracer'] = 'tracing/opentracing/tracer.lua',
			['opentracing.extractors'] = 'tracing/opentracing/extractors/init.lua',
			['opentracing.extractors.http'] = 'tracing/opentracing/extractors/http.lua',
			['opentracing.extractors.map'] = 'tracing/opentracing/extractors/map.lua',
			['opentracing.extractors.validate'] = 'tracing/opentracing/extractors/validate.lua',
			['opentracing.injectors'] = 'tracing/opentracing/injectors/init.lua',
			['opentracing.injectors.http'] = 'tracing/opentracing/injectors/http.lua',
			['opentracing.injectors.map'] = 'tracing/opentracing/injectors/map.lua',
			['zipkin.handler'] = 'tracing/zipkin/handler.lua',
			['zipkin.reporter'] = 'tracing/zipkin/reporter.lua',
			['zipkin.tracer'] = 'tracing/zipkin/tracer.lua',
			['zipkin.bounded_queue'] = 'tracing/zipkin/bounded_queue.lua',
		},
	},
	build_variables = {
		version = 'scm-1',
	},
	install_pass = false,
	copy_directories = {'doc', 'examples'},
}
