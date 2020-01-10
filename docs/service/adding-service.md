##  Changes in infra-worker 
Add the new service inside the docker-compose which is in infra-worker/worker/files/default/docker

Example 
```
 mongo30:
    image: mongo:3.0
    hostname: mongo
    container_name: cphp-mongo
    networks:
      default:
        aliases:
          - mongo

```

##  Chagnes in worker 
1. Modification common.php
Add a reference to the container at the level of shared key and assign false  to it 

Example
```'worker.compose.container.redis' => false,
```
Add a reference to the container at the level of abstract_factories and assign \Worker\Compose\Container\ContainerAbstractFactory::class to it

Example 
```
 'worker.compose.container.redis' => \Worker\Compose\Container\ContainerAbstractFactory::class,
```
2. Modification Composition.php
Add a condition to verify if the envirenement variable is set in the array variables.

```
if (array_key_exists('CPHP_SERVICE_REDIS', $variables)) {
            yield 'worker.compose.container.redis' => SemverObject::createFromString(
                $variables['CPHP_SERVICE_REDIS']
            );
        }
```

3. Add class 
Add a class in the container folder. This class must extend the Container abstract class.
Add the container name in the CONTAINER_NAME varibale according to the convention cphp-<nomservice>

Example 
```
const CONTAINER_NAME = 'cphp-redis';
```
Add the dafault version in the DEFAULT_VERSION variable and mention all the available verions in the AVAILABLE_VERSIONS variabale. For every version you have to use the same name as in docker-compose file.

Example
```
'5.0.7' => 'redis507'
```
For each service, you can test it in the isReady function. For exemple, to cheak if the server is up you can perform an health check.
Example for redis server :
```
 $commandDocker
            ->enableConsole()
            ->disableLogger()
            ->showCommand()
            ->setContainerReference($this->applicationContainerName)
            ->exec('redis-cli info | grep uptime_in_seconds', $stats)
        ;
        $uptime_in_seconds = explode(":", $stats[0]);
        if (!empty($stats) && $uptime_in_seconds[1] > 0) {
            $this->getLogger()->stdout(BashColorInterface::colorize('Redis container started.',
                BashColorInterface::GREEN,
                true
            ));
            return true;
        }
```
4. MOdification ContainerAbstractFactory.php 

Add a refernce to the container in CONTAINERS array.

Example:
```
'worker.compose.container.redis' => Redis::class,
```



