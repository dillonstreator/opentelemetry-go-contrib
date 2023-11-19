module github.com/dillonstreator/opentelemetry-go-contrib/propagators/autoprop

go 1.20

require (
	github.com/stretchr/testify v1.8.4
	github.com/dillonstreator/opentelemetry-go-contrib/propagators/aws v1.21.1
	github.com/dillonstreator/opentelemetry-go-contrib/propagators/b3 v1.21.1
	github.com/dillonstreator/opentelemetry-go-contrib/propagators/jaeger v1.21.1
	github.com/dillonstreator/opentelemetry-go-contrib/propagators/ot v1.21.1
	go.opentelemetry.io/otel v1.21.0
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/logr v1.3.0 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	go.opentelemetry.io/otel/metric v1.21.0 // indirect
	go.opentelemetry.io/otel/sdk v1.21.0 // indirect
	go.opentelemetry.io/otel/trace v1.21.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	golang.org/x/sys v0.14.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/dillonstreator/opentelemetry-go-contrib/propagators/jaeger => ../jaeger

replace github.com/dillonstreator/opentelemetry-go-contrib/propagators/b3 => ../b3

replace github.com/dillonstreator/opentelemetry-go-contrib/propagators/aws => ../aws

replace github.com/dillonstreator/opentelemetry-go-contrib/propagators/ot => ../ot
